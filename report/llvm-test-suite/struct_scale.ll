begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructScale(double noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge172

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %broadcast.splatinsert = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv180 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next181, %._crit_edge.split ] ; 4 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv180 ; 4 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv180 ; 5 uses
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv180
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.w ; 2 uses
  %i.y = call i32 @hypre_BoxGetSize(ptr noundef %i.o, ptr noundef nonnull %i.a) #4 ; 0 uses
  %i.z = load i32, ptr %i.o, align 4, !tbaa !4
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !4   ; 2 uses
  %i.ab = sub i32 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4  ; 2 uses
  %i.ag = sub i32 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = sub nsw i32 %i.aj, %i.af                ; 3 uses
  %i.al = icmp sgt i32 %i.ak, -1                  ; 2 uses
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = sub nsw i32 %i.an, %i.ap
  %i.ar = add nuw nsw i32 %i.ak, 1
  %i.as = mul nsw i32 %i.aq, %i.ar
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.at = phi i32 [ %i.as, %bb.c ], [ 0, %bb.b ]
  %i.au = load i32, ptr %i.a, align 4, !tbaa !4   ; 5 uses
  %i.av = load i32, ptr %i.l, align 4, !tbaa !4   ; 3 uses
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !4   ; 3 uses
  %.0127 = call i32 @llvm.smax.i32(i32 %i.av, i32 %i.au)
  %.1128 = call i32 @llvm.smax.i32(i32 %i.aw, i32 %.0127)
  %i.ax = icmp sgt i32 %.1128, 0
  br i1 %i.ax, label %.preheader155.lr.ph, label %._crit_edge.split

.preheader155.lr.ph:                              ; preds = %bb.d
  %i.ay = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.az = sub i32 %i.ay, %i.aa                    ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1                  ; 2 uses
  %i.bb = add i32 %i.az, 1                        ; 2 uses
  %i.bc = select i1 %i.ba, i32 %i.bb, i32 0       ; 2 uses
  %i.bd = add nuw nsw i32 %i.ak, 1
  %i.be = mul nsw i32 %i.bc, %i.bd
  %i.bf = select i1 %i.al, i32 %i.be, i32 0
  %i.bg = icmp sgt i32 %i.aw, 0
  %i.bh = icmp sgt i32 %i.av, 0
  %brmerge.not189 = and i1 %i.bg, %i.bh
  %i.bi = icmp sgt i32 %i.au, 0
  %or.cond = and i1 %brmerge.not189, %i.bi
  br i1 %or.cond, label %.preheader154.us.us.preheader, label %._crit_edge.split

.preheader154.us.us.preheader:                    ; preds = %.preheader155.lr.ph
  %i.bj = add nsw i32 %i.ag, %i.at
  %i.bk = mul nsw i32 %i.bb, %i.bj
  %i.bl = select i1 %i.ba, i32 %i.bk, i32 0
  %i.bm = add i32 %i.ab, %i.bl
  %i.bn = zext nneg i32 %i.au to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.au, 4
  %n.vec = and i64 %i.bn, 2147483644              ; 4 uses
  %i.bo = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.bn
  br label %.preheader154.us.us

.preheader154.us.us:                              ; preds = %.preheader154.us.us.preheader, %._crit_edge160.split.us.us.us
  %.0131163.us.us = phi i32 [ %i.cc, %._crit_edge160.split.us.us.us ], [ %i.bm, %.preheader154.us.us.preheader ] ; 2 uses
  %.1142162.us.us = phi i32 [ %i.cb, %._crit_edge160.split.us.us.us ], [ 0, %.preheader154.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader154.us.us
  %.1132159.us.us.us = phi i32 [ %i.ca, %._crit_edge.us.us.us ], [ %.0131163.us.us, %.preheader154.us.us ] ; 2 uses
  %.1140158.us.us.us = phi i32 [ %i.bz, %._crit_edge.us.us.us ], [ 0, %.preheader154.us.us ]
  %i.bp = sext i32 %.1132159.us.us.us to i64      ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.us
  %i.bq = add nsw i64 %n.vec, %i.bp
  %invariant.gep = getelementptr [8 x i8], ptr %i.x, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !25
  %wide.load190 = load <2 x double>, ptr %i.br, align 8, !tbaa !25
  %i.bs = fmul <2 x double> %broadcast.splat, %wide.load
  %i.bt = fmul <2 x double> %broadcast.splat, %wide.load190
  store <2 x double> %i.bs, ptr %gep, align 8, !tbaa !25
  store <2 x double> %i.bt, ptr %i.br, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bp, %.preheader.us.us.us ], [ %i.bq, %middle.block ]
  %.1135156.us.us.us.ph = phi i32 [ 0, %.preheader.us.us.us ], [ %i.bo, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1135156.us.us.us = phi i32 [ %i.by, %scalar.ph ], [ %.1135156.us.us.us.ph, %scalar.ph.preheader ]
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !25
  %i.bx = fmul double %0, %i.bw
  store double %i.bx, ptr %i.bv, align 8, !tbaa !25
  %indvars.iv.next.a = add nsw i64 %indvars.iv, 1
  %i.by = add nuw nsw i32 %.1135156.us.us.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %i.au
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !31

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %i.bz = add nuw nsw i32 %.1140158.us.us.us, 1   ; 2 uses
  %i.ca = add i32 %.1132159.us.us.us, %i.bc
  %exitcond178.not = icmp eq i32 %i.bz, %i.av
  br i1 %exitcond178.not, label %._crit_edge160.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !32

._crit_edge160.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.cb = add nuw nsw i32 %.1142162.us.us, 1      ; 2 uses
  %i.cc = add i32 %.0131163.us.us, %i.bf
  %exitcond179.not = icmp eq i32 %i.cb, %i.aw
  br i1 %exitcond179.not, label %._crit_edge.split, label %.preheader154.us.us, !llvm.loop !33

._crit_edge.split:                                ; preds = %._crit_edge160.split.us.us.us, %.preheader155.lr.ph, %bb.d
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %i.cd = load i32, ptr %i.f, align 8, !tbaa !19
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next181, %i.ce
  br i1 %i.cf, label %bb.b, label %._crit_edge172, !llvm.loop !34

._crit_edge172:                                   ; preds = %._crit_edge.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!8 = !{!9, !10, i64 8}
!9 = !{!"hypre_StructVector_struct", !5, i64 0, !10, i64 8, !12, i64 16, !13, i64 24, !5, i64 32, !5, i64 36, !14, i64 40, !6, i64 48, !5, i64 72, !5, i64 76}
!10 = !{!"p1 _ZTS23hypre_StructGrid_struct", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS21hypre_BoxArray_struct", !11, i64 0}
!13 = !{!"p1 double", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!16, !12, i64 8}
!16 = !{!"hypre_StructGrid_struct", !5, i64 0, !5, i64 4, !12, i64 8, !14, i64 16, !17, i64 24, !5, i64 32, !18, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 68}
!17 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !11, i64 0}
!18 = !{!"p1 _ZTS16hypre_Box_struct", !11, i64 0}
!19 = !{!20, !5, i64 8}
!20 = !{!"hypre_BoxArray_struct", !18, i64 0, !5, i64 8, !5, i64 12}
!21 = !{!20, !18, i64 0}
!22 = !{!9, !12, i64 16}
!23 = !{!9, !13, i64 24}
!24 = !{!9, !14, i64 40}
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !6, i64 0}
!27 = distinct !{!27, !28, !29, !30}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !28, !30, !29}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
end_hunk_0
