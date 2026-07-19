begin_hunk_0_@ARMT_Convert:bb.a
  %i.aq = add i64 %.1.us, 2                       ; 3 uses
  %.not.us = icmp ugt i64 %i.aq, %i.b
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !11

.split:                                           ; preds = %bb.b, %bb.h
  %.04145 = phi i64 [ %i.ce, %bb.h ], [ 0, %bb.b ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.04145 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = and i32 %i.au, 248
  %i.aw = icmp eq i32 %i.av, 240
  br i1 %i.aw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.split
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 3 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = and i32 %i.az, 248
  %i.bb = icmp eq i32 %i.ba, 248
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = shl nuw nsw i32 %i.au, 19
  %i.bd = and i32 %i.bc, 3670016
  %i.be = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 11
  %i.bh = or disjoint i32 %i.bg, %i.bd
  %i.bi = shl nuw nsw i32 %i.az, 8
  %i.bj = and i32 %i.bi, 1792
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = add nuw i64 %.04145, 2                  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bk, %i.bo
  %i.bq = shl nuw nsw i32 %i.bp, 1
  %i.br = trunc i64 %.04145 to i32
  %i.bs = add i32 %i.c, %i.br
  %.0 = add i32 %i.bq, %i.bs                      ; 4 uses
  %i.bt = lshr i32 %.0, 1
  %i.bu = lshr i32 %.0, 20
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = or disjoint i8 %i.bw, -16
  store i8 %i.bx, ptr %i.as, align 1, !tbaa !8
  %i.by = lshr i32 %.0, 12
  %i.bz = trunc i32 %i.by to i8
  store i8 %i.bz, ptr %i.ar, align 1, !tbaa !8
  %i.ca = lshr i32 %.0, 9
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = or i8 %i.cb, -8
  store i8 %i.cc, ptr %i.ax, align 1, !tbaa !8
  %i.cd = trunc i32 %i.bt to i8
  store i8 %i.cd, ptr %i.bm, align 1, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.f, %bb.g
  %.1 = phi i64 [ %i.bl, %bb.g ], [ %.04145, %bb.f ], [ %.04145, %.split ]
  %i.ce = add i64 %.1, 2                          ; 3 uses
  %.not = icmp ugt i64 %i.ce, %i.b
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !11

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.a
  %.042 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.e ], [ %i.ce, %bb.h ]
  ret i64 %.042
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 4, 1) i64 @PPC_Convert(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -4                           ; 2 uses
  %.not42 = icmp eq i32 %3, 0
  br i1 %.not42, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %bb.e
  %.04043.us = phi i64 [ %i.am, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.04043.us ; 5 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %.mask.us = and i32 %i.e, 252
  %i.f = icmp eq i32 %.mask.us, 72
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.split.us
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 3
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = shl nuw nsw i32 %i.e, 24
  %i.m = and i32 %i.l, 50331648
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = and i32 %i.i, 252
  %i.w = trunc i64 %.04043.us to i32
  %i.x = add i32 %2, %i.w
  %i.y = sub i32 %i.m, %i.x
  %i.z = add i32 %i.y, %i.v                       ; 2 uses
  %i.aa = add i32 %i.z, %i.q
  %.0.us = add i32 %i.aa, %i.u                    ; 3 uses
  %i.ab = lshr i32 %.0.us, 24
  %i.ac = trunc nuw i32 %i.ab to i8
  %i.ad = and i8 %i.ac, 3
  %i.ae = or disjoint i8 %i.ad, 72
  store i8 %i.ae, ptr %i.c, align 1, !tbaa !8
  %i.af = lshr i32 %.0.us, 16
  %i.ag = trunc i32 %i.af to i8
  store i8 %i.ag, ptr %i.n, align 1, !tbaa !8
  %i.ah = lshr i32 %.0.us, 8
  %i.ai = trunc i32 %i.ah to i8
  store i8 %i.ai, ptr %i.r, align 1, !tbaa !8
  %i.aj = and i8 %i.h, 3
  %i.ak = trunc i32 %i.z to i8
  %i.al = or i8 %i.aj, %i.ak
  store i8 %i.al, ptr %i.g, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.split.us
  %i.am = add nuw i64 %.04043.us, 4               ; 3 uses
  %.not.us = icmp ugt i64 %i.am, %i.b
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !12

.split:                                           ; preds = %bb.b, %bb.h
  %.04043 = phi i64 [ %i.bx, %bb.h ], [ 0, %bb.b ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.04043 ; 5 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %.mask = and i32 %i.ap, 252
  %i.aq = icmp eq i32 %.mask, 72
  br i1 %i.aq, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.split
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 3 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8   ; 2 uses
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = and i32 %i.at, 3
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = shl nuw nsw i32 %i.ap, 24
  %i.ax = and i32 %i.aw, 50331648
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 2 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = and i32 %i.at, 252
  %i.bh = trunc i64 %.04043 to i32
  %i.bi = add i32 %2, %i.bh
  %i.bj = add i32 %i.ax, %i.bi
  %i.bk = add i32 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i32 %i.bk, %i.bb
  %.0 = add i32 %i.bl, %i.bf                      ; 3 uses
  %i.bm = lshr i32 %.0, 24
  %i.bn = trunc nuw i32 %i.bm to i8
  %i.bo = and i8 %i.bn, 3
  %i.bp = or disjoint i8 %i.bo, 72
  store i8 %i.bp, ptr %i.an, align 1, !tbaa !8
  %i.bq = lshr i32 %.0, 16
  %i.br = trunc i32 %i.bq to i8
  store i8 %i.br, ptr %i.ay, align 1, !tbaa !8
  %i.bs = lshr i32 %.0, 8
  %i.bt = trunc i32 %i.bs to i8
  store i8 %i.bt, ptr %i.bc, align 1, !tbaa !8
  %i.bu = and i8 %i.as, 3
  %i.bv = trunc i32 %i.bk to i8
  %i.bw = or i8 %i.bu, %i.bv
  store i8 %i.bw, ptr %i.ar, align 1, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.f, %bb.g
  %i.bx = add nuw i64 %.04043, 4                  ; 3 uses
  %.not = icmp ugt i64 %i.bx, %i.b
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !12

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.a
  %.039 = phi i64 [ 0, %bb.a ], [ %i.am, %bb.e ], [ %i.bx, %bb.h ]
  ret i64 %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 0, 4294967293) i64 @SPARC_Convert(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -4                           ; 2 uses
  %.not49 = icmp eq i32 %3, 0
  br i1 %.not49, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %.thread.us
  %i.c = phi i64 [ %indvars.iv.next55, %.thread.us ], [ 0, %bb.b ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8     ; 2 uses
  switch i8 %i.e, label %.thread.us [
    i8 64, label %bb.d
    i8 127, label %bb.c
  ]

bb.c:                                             ; preds = %.split.us
  %4 = or disjoint i64 %i.c, 1                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8     ; 2 uses
  %i.h = icmp ugt i8 %i.g, -65
  br i1 %i.h, label %bb.e, label %.thread.us

bb.d:                                             ; preds = %.split.us
  %5 = or disjoint i64 %i.c, 1                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8     ; 2 uses
  %i.k = icmp ult i8 %i.j, 64
  br i1 %i.k, label %bb.e, label %.thread.us

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i8 [ %i.j, %bb.d ], [ %i.g, %bb.c ]
  %.pre-phi53 = phi i64 [ %5, %bb.d ], [ %4, %bb.c ]
  %i.m = zext nneg i8 %i.e to i32
  %i.n = shl nuw nsw i32 %i.m, 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.pre-phi53
  %i.p = zext i8 %i.l to i32
  %i.q = shl nuw nsw i32 %i.p, 16
  %i.r = or disjoint i32 %i.q, %i.n
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = or disjoint i32 %i.r, %i.v
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 3 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z
  %i.ab = shl i32 %i.aa, 2
  %8 = trunc nuw i64 %i.c to i32
  %i.ac = add i32 %2, %8
  %.0.us = sub i32 %i.ab, %i.ac                   ; 3 uses
  %i.ad = lshr i32 %.0.us, 2                      ; 2 uses
  %i.ae = shl i32 %.0.us, 7
  %i.af = ashr i32 %i.ae, 9
  %i.ag = and i32 %i.af, 1069547520               ; 2 uses
  %i.ah = and i32 %i.ad, 4128768
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = lshr i32 %i.ag, 24
  %i.ak = trunc nuw nsw i32 %i.aj to i8
  %i.al = or disjoint i8 %i.ak, 64
  store i8 %i.al, ptr %i.d, align 1, !tbaa !8
  %i.am = lshr exact i32 %i.ai, 16
  %i.an = trunc i32 %i.am to i8
  store i8 %i.an, ptr %i.o, align 1, !tbaa !8
  %i.ao = lshr i32 %.0.us, 10
  %i.ap = trunc i32 %i.ao to i8
  store i8 %i.ap, ptr %i.s, align 1, !tbaa !8
  %i.aq = trunc i32 %i.ad to i8
  store i8 %i.aq, ptr %i.x, align 1, !tbaa !8
  br label %.thread.us

.thread.us:                                       ; preds = %bb.e, %bb.d, %bb.c, %.split.us
  %indvars.iv.next55 = add i64 %i.c, 4            ; 2 uses
  %9 = and i64 %indvars.iv.next55, 4294967292     ; 2 uses
  %.not.us = icmp ult i64 %i.b, %9
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !13

.split:                                           ; preds = %bb.b, %.thread
  %i.ar = phi i64 [ %indvars.iv.next, %.thread ], [ 0, %bb.b ] ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8   ; 2 uses
  switch i8 %i.at, label %.thread [
    i8 64, label %bb.f
    i8 127, label %bb.g
  ]

bb.f:                                             ; preds = %.split
  %10 = or disjoint i64 %i.ar, 1                  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8   ; 2 uses
  %i.aw = icmp ult i8 %i.av, 64
  br i1 %i.aw, label %bb.h, label %.thread

bb.g:                                             ; preds = %.split
  %11 = or disjoint i64 %i.ar, 1                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %11
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8   ; 2 uses
  %i.az = icmp ugt i8 %i.ay, -65
  br i1 %i.az, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ba = phi i8 [ %i.ay, %bb.g ], [ %i.av, %bb.f ]
  %.pre-phi = phi i64 [ %11, %bb.g ], [ %10, %bb.f ]
  %i.bb = zext nneg i8 %i.at to i32
  %i.bc = shl nuw nsw i32 %i.bb, 24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.pre-phi
  %i.be = zext i8 %i.ba to i32
  %i.bf = shl nuw nsw i32 %i.be, 16
  %i.bg = or disjoint i32 %i.bf, %i.bc
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 2 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = or disjoint i32 %i.bg, %i.bk
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 3 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bl, %i.bo
  %i.bq = shl i32 %i.bp, 2
  %14 = trunc nuw i64 %i.ar to i32
  %i.br = add i32 %2, %14
  %.0 = add i32 %i.bq, %i.br                      ; 3 uses
  %i.bs = lshr i32 %.0, 2                         ; 2 uses
  %i.bt = shl i32 %.0, 7
  %i.bu = ashr i32 %i.bt, 9
  %i.bv = and i32 %i.bu, 1069547520               ; 2 uses
  %i.bw = and i32 %i.bs, 4128768
  %i.bx = or disjoint i32 %i.bv, %i.bw
  %i.by = lshr i32 %i.bv, 24
  %i.bz = trunc nuw nsw i32 %i.by to i8
  %i.ca = or disjoint i8 %i.bz, 64
  store i8 %i.ca, ptr %i.as, align 1, !tbaa !8
  %i.cb = lshr exact i32 %i.bx, 16
  %i.cc = trunc i32 %i.cb to i8
  store i8 %i.cc, ptr %i.bd, align 1, !tbaa !8
  %i.cd = lshr i32 %.0, 10
  %i.ce = trunc i32 %i.cd to i8
  store i8 %i.ce, ptr %i.bh, align 1, !tbaa !8
  %i.cf = trunc i32 %i.bs to i8
  store i8 %i.cf, ptr %i.bm, align 1, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.split, %bb.f, %bb.g, %bb.h
  %indvars.iv.next = add i64 %i.ar, 4             ; 2 uses
  %15 = and i64 %indvars.iv.next, 4294967292      ; 2 uses
  %.not = icmp ult i64 %i.b, %15
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !13

.loopexit:                                        ; preds = %.thread, %.thread.us, %bb.a
  %.046 = phi i64 [ 0, %bb.a ], [ %9, %.thread.us ], [ %15, %.thread ]
  ret i64 %.046
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
end_hunk_0
