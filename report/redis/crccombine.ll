inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@init_combine_cache:bb.a
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %gf2_matrix_square.exit32.loopexit ], [ 0, %.lr.ph.i20 ] ; 3 uses
  %.014 = phi i64 [ 4294967295, %gf2_matrix_square.exit32.loopexit ], [ 1, %.lr.ph.i20 ]
  %i.z = getelementptr inbounds nuw [512 x i8], ptr @combine_cache, i64 %indvars.iv38
  %i.aa = add nuw i64 %.014, %indvars.iv38
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [512 x i8], ptr @combine_cache, i64 %i.ab ; 2 uses
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %gf2_matrix_times_switch.exit, %.lr.ph.preheader.i26
  %indvars.iv.i29 = phi i64 [ 0, %.lr.ph.preheader.i26 ], [ %indvars.iv.next.i30, %gf2_matrix_times_switch.exit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i29
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %.not54.i = icmp eq i64 %i.ae, 0
  br i1 %.not54.i, label %gf2_matrix_times_switch.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i28, %bb.q
  %.057.i = phi i64 [ %.1.i, %bb.q ], [ 0, %.lr.ph.i28 ] ; 16 uses
  %.05156.i = phi i64 [ %i.dh, %bb.q ], [ %i.ae, %.lr.ph.i28 ] ; 2 uses
  %.05255.i = phi ptr [ %i.di, %bb.q ], [ %i.ac, %.lr.ph.i28 ] ; 30 uses
  %i.af = and i64 %.05156.i, 15
  switch i64 %i.af, label %default.unreachable [
    i64 15, label %bb.b
    i64 14, label %bb.c
    i64 13, label %bb.d
    i64 12, label %bb.e
    i64 11, label %bb.f
    i64 10, label %bb.g
    i64 9, label %bb.h
    i64 8, label %bb.i
    i64 7, label %bb.j
    i64 6, label %bb.k
    i64 5, label %bb.l
    i64 4, label %bb.m
    i64 3, label %bb.n
    i64 2, label %bb.o
    i64 1, label %bb.p
    i64 0, label %bb.q
  ]

bb.b:                                             ; preds = %.lr.ph.i33
  %i.ag = load <4 x i64>, ptr %.05255.i, align 8, !tbaa !13
  %i.ah = tail call i64 @llvm.vector.reduce.xor.v4i64(<4 x i64> %i.ag)
  %op.rdx = xor i64 %i.ah, %.057.i
  br label %bb.q

bb.c:                                             ; preds = %.lr.ph.i33
  %i.ai = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !13
  %i.ao = xor i64 %i.aj, %i.al
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = xor i64 %i.ap, %.057.i
  br label %bb.q

bb.d:                                             ; preds = %.lr.ph.i33
  %i.ar = load i64, ptr %.05255.i, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13
  %i.aw = xor i64 %i.ar, %i.at
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = xor i64 %i.ax, %.057.i
  br label %bb.q

bb.e:                                             ; preds = %.lr.ph.i33
  %i.az = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !13
  %i.bd = xor i64 %i.ba, %i.bc
  %i.be = xor i64 %i.bd, %.057.i
  br label %bb.q

bb.f:                                             ; preds = %.lr.ph.i33
  %i.bf = load i64, ptr %.05255.i, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !13
  %i.bk = xor i64 %i.bf, %i.bh
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = xor i64 %i.bl, %.057.i
  br label %bb.q

bb.g:                                             ; preds = %.lr.ph.i33
  %i.bn = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !13
  %i.br = xor i64 %i.bo, %i.bq
  %i.bs = xor i64 %i.br, %.057.i
  br label %bb.q

bb.h:                                             ; preds = %.lr.ph.i33
  %i.bt = load i64, ptr %.05255.i, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !13
  %i.bw = xor i64 %i.bt, %i.bv
  %i.bx = xor i64 %i.bw, %.057.i
  br label %bb.q

bb.i:                                             ; preds = %.lr.ph.i33
  %i.by = getelementptr inbounds nuw i8, ptr %.05255.i, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !13
  %i.ca = xor i64 %i.bz, %.057.i
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph.i33
  %i.cb = load i64, ptr %.05255.i, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !13
  %i.cg = xor i64 %i.cb, %i.cd
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = xor i64 %i.ch, %.057.i
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph.i33
  %i.cj = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !13
  %i.cn = xor i64 %i.ck, %i.cm
  %i.co = xor i64 %i.cn, %.057.i
  br label %bb.q

bb.l:                                             ; preds = %.lr.ph.i33
  %i.cp = load i64, ptr %.05255.i, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !13
  %i.cs = xor i64 %i.cp, %i.cr
  %i.ct = xor i64 %i.cs, %.057.i
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph.i33
  %i.cu = getelementptr inbounds nuw i8, ptr %.05255.i, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cw = xor i64 %i.cv, %.057.i
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph.i33
  %i.cx = load i64, ptr %.05255.i, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !13
  %i.da = xor i64 %i.cx, %i.cz
  %i.db = xor i64 %i.da, %.057.i
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.i33
  %i.dc = getelementptr inbounds nuw i8, ptr %.05255.i, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !13
  %i.de = xor i64 %i.dd, %.057.i
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.i33
  %i.df = load i64, ptr %.05255.i, align 8, !tbaa !13
  %i.dg = xor i64 %i.df, %.057.i
  br label %bb.q

default.unreachable:                              ; preds = %.lr.ph.i33
  unreachable

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph.i33
  %.1.i = phi i64 [ %op.rdx, %bb.b ], [ %i.aq, %bb.c ], [ %i.ay, %bb.d ], [ %i.be, %bb.e ], [ %i.bm, %bb.f ], [ %i.bs, %bb.g ], [ %i.bx, %bb.h ], [ %i.ca, %bb.i ], [ %i.ci, %bb.j ], [ %i.co, %bb.k ], [ %i.ct, %bb.l ], [ %i.cw, %bb.m ], [ %i.db, %bb.n ], [ %i.de, %bb.o ], [ %i.dg, %bb.p ], [ %.057.i, %.lr.ph.i33 ] ; 2 uses
  %i.dh = lshr i64 %.05156.i, 4                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.05255.i, i64 32
  %.not.i34 = icmp eq i64 %i.dh, 0
  br i1 %.not.i34, label %gf2_matrix_times_switch.exit, label %.lr.ph.i33, !llvm.loop !15

gf2_matrix_times_switch.exit:                     ; preds = %bb.q, %.lr.ph.i28
  %.0.lcssa.i = phi i64 [ 0, %.lr.ph.i28 ], [ %.1.i, %bb.q ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i29
  store i64 %.0.lcssa.i, ptr %i.dj, align 8, !tbaa !13
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, %wide.trip.count.i
  br i1 %exitcond.not.i31, label %gf2_matrix_square.exit32.loopexit, label %.lr.ph.i28, !llvm.loop !20

gf2_matrix_square.exit32.loopexit:                ; preds = %gf2_matrix_times_switch.exit
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, 64
  br i1 %exitcond41.not, label %.split, label %.lr.ph.preheader.i26, !llvm.loop !21

.split:                                           ; preds = %gf2_matrix_square.exit32.loopexit, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @crc64_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @combine_cache, align 16, !tbaa !13
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @init_combine_cache(i64 noundef %3, i8 noundef zeroext %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %.016 = phi i64 [ %i.d, %bb.e ], [ %2, %bb.d ]
  %.1 = phi i64 [ %7, %bb.e ], [ %0, %bb.d ]
  %.0 = phi i32 [ %i.f, %bb.e ], [ 0, %bb.d ]     ; 2 uses
  %5 = zext nneg i32 %.0 to i64
  %6 = getelementptr inbounds nuw [512 x i8], ptr @combine_cache, i64 %5
  %7 = tail call i64 @gf2_matrix_times_switch(ptr noundef nonnull %6, i64 noundef %.1) ; 2 uses
  %i.d = lshr i64 %.016, 1                        ; 2 uses
  %i.e = add nuw nsw i32 %.0, 1
  %i.f = and i32 %i.e, 63
  %.not19 = icmp eq i64 %i.d, 0
  br i1 %.not19, label %bb.f, label %bb.e, !llvm.loop !22

bb.f:                                             ; preds = %bb.e
  %i.g = xor i64 %7, %1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.014 = phi i64 [ %i.g, %bb.f ], [ %0, %bb.a ]
  ret i64 %.014
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v4i64(<4 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !11, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
end_hunk_0
