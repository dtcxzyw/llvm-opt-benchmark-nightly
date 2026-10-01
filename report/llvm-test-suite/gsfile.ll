Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gsfile?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"ppm file buffer\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"P4\0A# Ghostscript 1 bit mono image dump\0A%d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"P6\0A# Ghostscript 8 bit mapped color image dump\0A%d %d\0A255\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"P5\0A# Ghostscript 8 bit gray scale image dump\0A%d %d\0A255\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"P6\0A# Ghostscript 24 bit color image dump\0A%d %d\0A255\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"P6\0A# Ghostscript 32 bit color image dump\0A%d %d\0A255\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -25, 1) i32 @gs_writeppmfile(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @mem_bytes_per_scan_line(ptr noundef %0) #4
  %.fr120 = freeze i32 %i.a                       ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = mul nsw i32 %.fr120, 3                   ; 4 uses
  %i.g = tail call ptr @gs_malloc(i32 noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str) #4 ; 19 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.e, label %.loopexit89 [
    i32 1, label %bb.f
    i32 8, label %bb.c
    i32 24, label %bb.d
    i32 32, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !24
  %.not = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not, ptr @.str.3, ptr @.str.2
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %.085 = phi ptr [ @.str.5, %bb.e ], [ %i.k, %bb.c ], [ @.str.4, %bb.d ], [ @.str.1, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull %.085, i32 noundef %i.m, i32 noundef %i.c) #4 ; 0 uses
  %i.o = icmp sgt i32 %i.c, 0
  br i1 %i.o, label %.lr.ph102, label %.loopexit89

.lr.ph102:                                        ; preds = %bb.f
  %i.p = sext i32 %.fr120 to i64                  ; 7 uses
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p     ; 3 uses
  %i.r = ptrtoint ptr %i.g to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.p ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.p
  %i.w = icmp sgt i32 %.fr120, 0                  ; 2 uses
  switch i32 %i.e, label %.lr.ph102.split [
    i32 8, label %.lr.ph102.split.us
    i32 32, label %.lr.ph102.split.us107
  ]

.lr.ph102.split.us:                               ; preds = %.lr.ph102
  br i1 %i.w, label %.lr.ph102.split.us.split.us, label %.lr.ph102.split.us.split

.lr.ph102.split.us.split.us:                      ; preds = %.lr.ph102.split.us, %bb.h
  %.084100.us.us = phi i32 [ %i.ay, %bb.h ], [ 0, %.lr.ph102.split.us ] ; 2 uses
  %i.x = tail call i32 @mem_copy_scan_lines(ptr noundef nonnull %0, i32 noundef %.084100.us.us, ptr noundef nonnull %i.g, i32 noundef %.fr120) #4 ; 0 uses
  %i.y = load i32, ptr %i.s, align 8, !tbaa !24
  %.not87.us.us = icmp eq i32 %i.y, 0
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  br i1 %.not87.us.us, label %.lr.ph99.us.us, label %.lr.ph95.us.us

.lr.ph95.us.us:                                   ; preds = %.lr.ph102.split.us.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.g, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph95.us.us
  %.07593.us.us = phi ptr [ %i.g, %.lr.ph95.us.us ], [ %i.am, %bb.g ] ; 4 uses
  %.07692.us.us = phi ptr [ %i.u, %.lr.ph95.us.us ], [ %i.aa, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.07692.us.us, i64 1 ; 2 uses
  %i.ab = load i8, ptr %.07692.us.us, align 1, !tbaa !27
  %i.ac = zext i8 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %.07593.us.us, i64 1
  store i8 %i.ag, ptr %.07593.us.us, align 1, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %.07593.us.us, i64 2
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !27
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %.07593.us.us, i64 3
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !27
  %i.an = icmp ult ptr %i.aa, %i.v
  br i1 %i.an, label %bb.g, label %..loopexit88_crit_edge.us.us, !llvm.loop !8

.lr.ph99.us.us:                                   ; preds = %.lr.ph102.split.us.split.us, %.lr.ph99.us.us
  %.197.us.us = phi ptr [ %i.ao, %.lr.ph99.us.us ], [ %i.g, %.lr.ph102.split.us.split.us ] ; 3 uses
  %i.ao = getelementptr i8, ptr %.197.us.us, i64 1 ; 2 uses
  %i.ap = load i8, ptr %.197.us.us, align 1, !tbaa !27
  %i.aq = zext i8 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !27
  store i8 %i.at, ptr %.197.us.us, align 1, !tbaa !27
  %i.au = icmp ult ptr %i.ao, %i.q
  br i1 %i.au, label %.lr.ph99.us.us, label %..loopexit88_crit_edge.us.us, !llvm.loop !9

..loopexit88_crit_edge.us.us:                     ; preds = %bb.g, %.lr.ph99.us.us
  %.079.us.us = phi i32 [ %.fr120, %.lr.ph99.us.us ], [ %i.f, %bb.g ]
  %i.av = sext i32 %.079.us.us to i64             ; 2 uses
  %i.aw = tail call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef %i.av, ptr noundef %1)
  %i.ax = icmp ult i64 %i.aw, %i.av
  br i1 %i.ax, label %.loopexit89, label %bb.h

bb.h:                                             ; preds = %..loopexit88_crit_edge.us.us
  %i.ay = add nuw nsw i32 %.084100.us.us, 1       ; 2 uses
  %exitcond132.not = icmp eq i32 %i.ay, %i.c
  br i1 %exitcond132.not, label %.loopexit89, label %.lr.ph102.split.us.split.us, !llvm.loop !10

.lr.ph102.split.us.split:                         ; preds = %.lr.ph102.split.us, %bb.i
  %.084100.us = phi i32 [ %i.bb, %bb.i ], [ 0, %.lr.ph102.split.us ] ; 2 uses
  %i.az = tail call i32 @mem_copy_scan_lines(ptr noundef nonnull %0, i32 noundef %.084100.us, ptr noundef nonnull %i.g, i32 noundef %.fr120) #4 ; 0 uses
  %i.ba = load i32, ptr %i.s, align 8, !tbaa !24
  %.not87.us = icmp eq i32 %i.ba, 0
  br i1 %.not87.us, label %.loopexit.us, label %.loopexit88.us

bb.i:                                             ; preds = %.loopexit.us
  %i.bb = add nuw nsw i32 %.084100.us, 1          ; 2 uses
  %exitcond131.not = icmp eq i32 %i.bb, %i.c
  br i1 %exitcond131.not, label %.loopexit89, label %.lr.ph102.split.us.split, !llvm.loop !10

.loopexit88.us:                                   ; preds = %.lr.ph102.split.us.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.g, i64 %i.p, i1 false)
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph102.split.us.split, %.loopexit88.us
  %.079.us = phi i32 [ %i.f, %.loopexit88.us ], [ %.fr120, %.lr.ph102.split.us.split ]
  %i.bc = sext i32 %.079.us to i64                ; 2 uses
  %i.bd = tail call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef %i.bc, ptr noundef %1)
  %i.be = icmp ult i64 %i.bd, %i.bc
  br i1 %i.be, label %.loopexit89, label %bb.i

.lr.ph102.split.us107:                            ; preds = %.lr.ph102
  br i1 %i.w, label %.lr.ph.us.us, label %.lr.ph102.split.us107.split.split

.lr.ph.us.us:                                     ; preds = %.lr.ph102.split.us107, %bb.k
  %.084100.us108.us = phi i32 [ %i.bw, %bb.k ], [ 0, %.lr.ph102.split.us107 ] ; 2 uses
  %i.bf = tail call i32 @mem_copy_scan_lines(ptr noundef %0, i32 noundef %.084100.us108.us, ptr noundef nonnull %i.g, i32 noundef %.fr120) #4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.us.us
  %.291.us.us = phi ptr [ %i.g, %.lr.ph.us.us ], [ %i.bp, %bb.j ] ; 4 uses
  %.27890.us.us = phi ptr [ %i.g, %.lr.ph.us.us ], [ %i.bn, %bb.j ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.27890.us.us, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.27890.us.us, i64 2
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %.291.us.us, i64 1
  store i8 %i.bi, ptr %.291.us.us, align 1, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %.27890.us.us, i64 3
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %.291.us.us, i64 2
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %.27890.us.us, i64 4 ; 2 uses
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %.291.us.us, i64 3 ; 2 uses
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !27
  %i.bq = icmp ult ptr %i.bn, %i.q
  br i1 %i.bq, label %bb.j, label %._crit_edge.us.us, !llvm.loop !11

._crit_edge.us.us:                                ; preds = %bb.j
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.br, %i.r
  %sext = shl i64 %i.bs, 32
  %i.bt = ashr exact i64 %sext, 32                ; 2 uses
  %i.bu = tail call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef %i.bt, ptr noundef %1)
  %i.bv = icmp ult i64 %i.bu, %i.bt
  br i1 %i.bv, label %.loopexit89, label %bb.k

bb.k:                                             ; preds = %._crit_edge.us.us
  %i.bw = add nuw nsw i32 %.084100.us108.us, 1    ; 2 uses
  %exitcond129.not = icmp eq i32 %i.bw, %i.c
  br i1 %exitcond129.not, label %.loopexit89, label %.lr.ph.us.us, !llvm.loop !10

.lr.ph102.split.us107.split.split:                ; preds = %.lr.ph102.split.us107, %.lr.ph102.split.us107.split.split
  %.084100.us108 = phi i32 [ %i.by, %.lr.ph102.split.us107.split.split ], [ 0, %.lr.ph102.split.us107 ] ; 2 uses
  %i.bx = tail call i32 @mem_copy_scan_lines(ptr noundef nonnull %0, i32 noundef %.084100.us108, ptr noundef nonnull %i.g, i32 noundef %.fr120) #4 ; 0 uses
  %i.by = add nuw nsw i32 %.084100.us108, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %i.c
  br i1 %exitcond.not, label %.loopexit89, label %.lr.ph102.split.us107.split.split, !llvm.loop !10

bb.l:                                             ; preds = %.lr.ph102.split
  %i.bz = add nuw nsw i32 %.084100, 1             ; 2 uses
  %exitcond133.not = icmp eq i32 %i.bz, %i.c
  br i1 %exitcond133.not, label %.loopexit89, label %.lr.ph102.split, !llvm.loop !10

.lr.ph102.split:                                  ; preds = %.lr.ph102, %bb.l
  %.084100 = phi i32 [ %i.bz, %bb.l ], [ 0, %.lr.ph102 ] ; 2 uses
  %i.ca = tail call i32 @mem_copy_scan_lines(ptr noundef %0, i32 noundef %.084100, ptr noundef nonnull %i.g, i32 noundef %.fr120) #4 ; 0 uses
  %i.cb = tail call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef %i.p, ptr noundef %1)
  %i.cc = icmp ult i64 %i.cb, %i.p
  br i1 %i.cc, label %.loopexit89, label %bb.l

.loopexit89:                                      ; preds = %.lr.ph102.split.us107.split.split, %bb.k, %._crit_edge.us.us, %bb.i, %.loopexit.us, %bb.h, %..loopexit88_crit_edge.us.us, %bb.l, %.lr.ph102.split, %bb.f, %bb.b
  %.283 = phi i32 [ -23, %bb.b ], [ 0, %bb.k ], [ 0, %bb.f ], [ -12, %.loopexit.us ], [ 0, %bb.h ], [ 0, %bb.l ], [ -12, %.lr.ph102.split ], [ -12, %..loopexit88_crit_edge.us.us ], [ 0, %bb.i ], [ -12, %._crit_edge.us.us ], [ 0, %.lr.ph102.split.us107.split.split ]
  tail call void @gs_free(ptr noundef nonnull %i.g, i32 noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %.loopexit89
  %.0 = phi i32 [ -25, %bb.a ], [ %.283, %.loopexit89 ]
  ret i32 %.0
}

declare i32 @mem_bytes_per_scan_line(ptr noundef) local_unnamed_addr #1

declare ptr @gs_malloc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @mem_copy_scan_lines(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

declare void @gs_free(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !28}
!9 = distinct !{!9, !28}
!10 = distinct !{!10, !28}
!11 = distinct !{!11, !28}
end_hunk_0
