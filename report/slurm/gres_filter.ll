Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gres_filter?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@_estimate_cpus_per_gres:bb.a
switch.early.test:                                ; preds = %bb.a
  switch i32 %0, label %bb.b [
    i32 -2, label %bb.h
    i32 0, label %bb.h
  ]

bb.b:                                             ; preds = %switch.early.test
  %i.a = zext i32 %0 to i64                       ; 3 uses
  %.not = icmp ugt i64 %1, %i.a
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.rhs.trunc = trunc nuw i64 %1 to i32           ; 2 uses
  %i.b = urem i32 %0, %.rhs.trunc
  %i.c = udiv i32 %0, %.rhs.trunc
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.zext31 = trunc i32 %i.c to i16
  %i.d = trunc nuw i32 %2 to i16
  %i.e = mul i16 %.zext31, %i.d
  br label %.sink.split

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.f = urem i64 %1, %i.a
  %i.g = udiv i64 %1, %i.a                        ; 2 uses
  %.not27 = icmp eq i64 %i.f, 0
  br i1 %.not27, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  %i.i = urem i64 %i.h, %i.g
  %i.j = udiv i64 %i.h, %i.g
  %.not28 = icmp eq i64 %i.i, 0
  br i1 %.not28, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = trunc nuw i64 %i.j to i16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.g
  %.sink = phi i16 [ %i.k, %bb.g ], [ %i.e, %bb.d ]
  store i16 %.sink, ptr %3, align 2
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %switch.early.test, %switch.early.test, %bb.a, %bb.e
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @_sort_sockets_by_avail_cores(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr @avail_cores_per_sock, align 8 ; 2 uses
  %i.b = load i32, ptr %0, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.c
  %i.e = load i32, ptr %1, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.f
  %i.h = tail call i32 @slurm_sort_uint16_list_desc(ptr noundef %i.d, ptr noundef %i.g) #6
  ret i32 %i.h
}

declare i32 @slurm_bit_test(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @bit_clear(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @bit_nclear(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_reduce_restricted_cores(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i64 noundef %6, i16 noundef zeroext %7, i16 noundef zeroext %8, i16 noundef zeroext %9, ptr nofree noundef readonly captures(none) %10, i1 noundef zeroext %11, i1 noundef zeroext %12) unnamed_addr #0 {
bb.a:
  %or.cond = or i1 %11, %12
  br i1 %or.cond, label %.loopexit93, label %.preheader92

.preheader92:                                     ; preds = %bb.a
  %.not111 = icmp eq i16 %7, 0
  br i1 %.not111, label %._crit_edge, label %.lr.ph97

.lr.ph97:                                         ; preds = %.preheader92
  %i.a = zext i16 %8 to i32                       ; 2 uses
  %.not112 = icmp eq i16 %8, 0
  br i1 %.not112, label %._crit_edge, label %.lr.ph97.split.us.preheader

.lr.ph97.split.us.preheader:                      ; preds = %.lr.ph97
  %i.b = zext i16 %8 to i64
  %wide.trip.count = zext i16 %7 to i64
  br label %.lr.ph97.split.us

.lr.ph97.split.us:                                ; preds = %.lr.ph97.split.us.preheader, %.loopexit91.us
  %indvars.iv = phi i64 [ 0, %.lr.ph97.split.us.preheader ], [ %indvars.iv.next, %.loopexit91.us ] ; 5 uses
  %i.c = load i16, ptr %3, align 2
  %i.d = zext i16 %i.c to i64
  %.not.us = icmp ult i64 %6, %i.d
  br i1 %.not.us, label %bb.b, label %.loopexit93

bb.b:                                             ; preds = %.lr.ph97.split.us
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.loopexit91.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv ; 3 uses
  %i.i = load i16, ptr %i.h, align 2
  %.not75.us = icmp eq i16 %i.i, 0
  br i1 %.not75.us, label %.loopexit91.us, label %.preheader90.us

.backedge116:                                     ; preds = %.backedge116.backedge, %.preheader90.us
  %.06794.us = phi i32 [ 0, %.preheader90.us ], [ %.06794.us.be, %.backedge116.backedge ] ; 3 uses
  %i.j = zext i32 %.06794.us to i64
  %i.k = add nuw nsw i64 %i.ab, %i.j              ; 3 uses
  %i.l = tail call i32 @slurm_bit_test(ptr noundef %4, i64 noundef %i.k) #6
  %.not76.us = icmp eq i32 %i.l, 0
  br i1 %.not76.us, label %select.unfold.us, label %bb.d

bb.d:                                             ; preds = %.backedge116
  %i.m = tail call i32 @slurm_bit_test(ptr noundef %0, i64 noundef %i.k) #6
  %.not77.us = icmp eq i32 %i.m, 0
  br i1 %.not77.us, label %select.unfold.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @bit_clear(ptr noundef %0, i64 noundef %i.k) #6
  %i.n = load ptr, ptr @avail_cores_per_sock, align 8
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.p = load i16, ptr %i.o, align 2
  %i.q = add i16 %i.p, -1
  store i16 %i.q, ptr %i.o, align 2
  %i.r = load i16, ptr %2, align 2
  %i.s = add i16 %i.r, -1
  store i16 %i.s, ptr %2, align 2
  %i.t = load i16, ptr %3, align 2
  %i.u = add i16 %i.t, -1
  store i16 %i.u, ptr %3, align 2
  %i.v = load i16, ptr %i.h, align 2
  %i.w = add i16 %i.v, -1
  store i16 %i.w, ptr %i.h, align 2
  %i.x = load i16, ptr %3, align 2
  %i.y = zext i16 %i.x to i64
  %.not78.us = icmp ult i64 %6, %i.y
  %i.z = add nuw nsw i32 %.06794.us, 1            ; 2 uses
  %i.aa = icmp samesign ult i32 %i.z, %i.a
  %or.cond107 = select i1 %.not78.us, i1 %i.aa, i1 false
  br i1 %or.cond107, label %.backedge116.backedge, label %.loopexit91.us

select.unfold.us:                                 ; preds = %bb.d, %.backedge116
  %.old = add nuw nsw i32 %.06794.us, 1           ; 2 uses
  %.old106 = icmp samesign ult i32 %.old, %i.a
  br i1 %.old106, label %.backedge116.backedge, label %.loopexit91.us

.backedge116.backedge:                            ; preds = %select.unfold.us, %bb.e
  %.06794.us.be = phi i32 [ %.old, %select.unfold.us ], [ %i.z, %bb.e ]
  br label %.backedge116, !llvm.loop !24

.loopexit91.us:                                   ; preds = %bb.e, %select.unfold.us, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit93, label %.lr.ph97.split.us, !llvm.loop !25

.preheader90.us:                                  ; preds = %bb.c
  %i.ab = mul nuw nsw i64 %indvars.iv, %i.b
  br label %.backedge116

.loopexit93:                                      ; preds = %.lr.ph97.split.us, %.loopexit91.us, %bb.a
  %.not113 = icmp eq i16 %7, 0
  br i1 %.not113, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %.loopexit93
  %i.ac = zext i16 %8 to i32                      ; 2 uses
  %.not114 = icmp eq i16 %8, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph103.split.us.preheader

.lr.ph103.split.us.preheader:                     ; preds = %.lr.ph103
  %i.ad = zext i16 %8 to i64
  %wide.trip.count122 = zext i16 %7 to i64
  br label %.lr.ph103.split.us

.lr.ph103.split.us:                               ; preds = %.lr.ph103.split.us.preheader, %.loopexit.us
  %indvars.iv119 = phi i64 [ 0, %.lr.ph103.split.us.preheader ], [ %indvars.iv.next120, %.loopexit.us ] ; 5 uses
  %i.ae = load i16, ptr %3, align 2
  %i.af = zext i16 %i.ae to i64
  %.not79.us = icmp ult i64 %6, %i.af
  br i1 %.not79.us, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph103.split.us
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 %indvars.iv119
  %i.ah = load i8, ptr %i.ag, align 1, !range !10, !noundef !11
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.g, label %.loopexit.us

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv119 ; 3 uses
  %i.ak = load i16, ptr %i.aj, align 2
  %.not80.us = icmp eq i16 %i.ak, 0
  br i1 %.not80.us, label %.loopexit.us, label %.preheader.us

.backedge:                                        ; preds = %.backedge.backedge, %.preheader.us
  %.099.us = phi i32 [ 0, %.preheader.us ], [ %.099.us.be, %.backedge.backedge ] ; 3 uses
  %i.al = zext i32 %.099.us to i64
  %i.am = add nuw nsw i64 %13, %i.al              ; 3 uses
  %i.an = tail call i32 @slurm_bit_test(ptr noundef %4, i64 noundef %i.am) #6
  %.not81.us = icmp eq i32 %i.an, 0
  br i1 %.not81.us, label %select.unfold86.us, label %bb.h

bb.h:                                             ; preds = %.backedge
  %i.ao = tail call i32 @slurm_bit_test(ptr noundef %0, i64 noundef %i.am) #6
  %.not82.us = icmp eq i32 %i.ao, 0
  br i1 %.not82.us, label %select.unfold86.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @bit_clear(ptr noundef %0, i64 noundef %i.am) #6
  %i.ap = load ptr, ptr @avail_cores_per_sock, align 8
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv119 ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = add i16 %i.ar, -1
  store i16 %i.as, ptr %i.aq, align 2
  %i.at = load i16, ptr %2, align 2
  %i.au = add i16 %i.at, -1
  store i16 %i.au, ptr %2, align 2
  %i.av = load i16, ptr %3, align 2
  %i.aw = add i16 %i.av, -1
  store i16 %i.aw, ptr %3, align 2
  %i.ax = load i16, ptr %i.aj, align 2
  %i.ay = add i16 %i.ax, -1
  store i16 %i.ay, ptr %i.aj, align 2
  %i.az = load i16, ptr %3, align 2
  %i.ba = zext i16 %i.az to i64
  %.not83.us = icmp ult i64 %6, %i.ba
  %i.bb = add nuw nsw i32 %.099.us, 1             ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, %i.ac
  %or.cond110 = select i1 %.not83.us, i1 %i.bc, i1 false
  br i1 %or.cond110, label %.backedge.backedge, label %.loopexit.us

select.unfold86.us:                               ; preds = %bb.h, %.backedge
  %.old108 = add nuw nsw i32 %.099.us, 1          ; 2 uses
  %.old109 = icmp samesign ult i32 %.old108, %i.ac
  br i1 %.old109, label %.backedge.backedge, label %.loopexit.us

.backedge.backedge:                               ; preds = %select.unfold86.us, %bb.i
  %.099.us.be = phi i32 [ %.old108, %select.unfold86.us ], [ %i.bb, %bb.i ]
  br label %.backedge, !llvm.loop !26

.loopexit.us:                                     ; preds = %bb.i, %select.unfold86.us, %bb.g, %bb.f
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge, label %.lr.ph103.split.us, !llvm.loop !27

.preheader.us:                                    ; preds = %bb.g
  %13 = mul nuw nsw i64 %indvars.iv119, %i.ad
  br label %.backedge

._crit_edge:                                      ; preds = %.loopexit.us, %.lr.ph103.split.us, %.lr.ph103, %.lr.ph97, %.preheader92, %.loopexit93
  %i.bd = load i16, ptr %2, align 2
  %i.be = zext i16 %i.bd to i32
  %i.bf = zext i16 %9 to i32
  %i.bg = mul nuw nsw i32 %i.be, %i.bf            ; 2 uses
  %i.bh = load i16, ptr %1, align 2
  %i.bi = zext i16 %i.bh to i32
  %i.bj = icmp samesign ugt i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.bk = trunc i32 %i.bg to i16
  store i16 %i.bk, ptr %1, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  ret void
}

declare i32 @get_log_level() local_unnamed_addr #1

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @error(ptr noundef, ...) local_unnamed_addr #1

declare i32 @slurm_sort_uint16_list_desc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @bit_overlap_any(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = distinct !{!12, !8, !9}
!13 = distinct !{!13, !8, !9}
!14 = distinct !{!14, !8, !9}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !8, !9}
!17 = distinct !{!17, !8, !9}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !8, !9}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !8, !9}
!22 = distinct !{!22, !8, !9}
!23 = distinct !{!23, !8, !9}
!24 = distinct !{!24, !8, !9}
!25 = distinct !{!25, !8, !9}
!26 = distinct !{!26, !8, !9}
!27 = distinct !{!27, !8, !9}
end_hunk_0
