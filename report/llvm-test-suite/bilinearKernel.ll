Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/bilinearKernel?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bilinearKernel(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %1, 2                            ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = icmp sgt i32 %0, 0
  %i.d = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge69.split

.preheader.preheader:                             ; preds = %bb.a
  %i.e = shl i32 %0, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1) ; 2 uses
  %smax81 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %wide.trip.count82 = zext nneg i32 %smax81 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  %wide.trip.count76 = zext nneg i32 %smax to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv78 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next79, %._crit_edge ] ; 3 uses
  %i.f = trunc nuw nsw i64 %indvars.iv78 to i32   ; 2 uses
  %i.g = lshr i32 %i.f, 2                         ; 3 uses
  %i.h = uitofp nneg i32 %i.f to float
  %i.i = fmul nnan float %i.h, 2.500000e-01
  %i.j = uitofp nneg i32 %i.g to float
  %i.k = fsub float %i.i, %i.j                    ; 3 uses
  %i.l = zext nneg i32 %i.g to i64
  %i.m = getelementptr inbounds nuw [1024 x i8], ptr %2, i64 %i.l ; 4 uses
  %i.n = fsub float 1.000000e+00, %i.k            ; 6 uses
  %i.o = mul nuw nsw i64 %indvars.iv78, %i.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.o ; 2 uses
  %i.q = add nuw nsw i32 %i.g, 1                  ; 2 uses
  %i.r = icmp slt i32 %i.q, %0
  %i.s = zext nneg i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [1024 x i8], ptr %2, i64 %i.s
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.preheader, %bb.c
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.u = trunc nuw nsw i64 %indvars.iv73 to i32   ; 2 uses
  %i.v = lshr i32 %i.u, 2                         ; 3 uses
  %i.w = uitofp nneg i32 %i.u to float
  %i.x = fmul nnan float %i.w, 2.500000e-01
  %i.y = uitofp nneg i32 %i.v to float
  %i.z = fsub float %i.x, %i.y                    ; 3 uses
  %i.aa = add nuw nsw i32 %i.v, 1                 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %1
  %i.ac = zext nneg i32 %i.v to i64               ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = sitofp i32 %i.ae to float
  %i.ag = fsub float 1.000000e+00, %i.z           ; 2 uses
  %i.ah = fmul float %i.ag, %i.af                 ; 2 uses
  br i1 %i.ab, label %bb.b, label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph.split.us
  %i.ai = fmul float %i.n, %i.ah
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.aj = zext nneg i32 %i.aa to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = sitofp i32 %i.al to float
  %i.an = fmul float %i.n, %i.am
  %i.ao = fmul float %i.z, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.n, float %i.ao)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ac
  %i.ar = load <2 x i32>, ptr %i.aq, align 4, !tbaa !7
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>   ; 2 uses
  %4 = extractelement <2 x float> %i.as, i64 0
  %5 = fmul float %i.k, %4
  %i.at = tail call float @llvm.fmuladd.f32(float %5, float %i.ag, float %i.ap)
  %i.au = extractelement <2 x float> %i.as, i64 1
  %6 = fmul float %i.k, %i.au
  %i.av = tail call float @llvm.fmuladd.f32(float %6, float %i.z, float %i.at)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge.us
  %.sink89 = phi float [ %i.av, %bb.b ], [ %i.ai, %.critedge.us ]
  %i.aw = fptosi float %.sink89 to i32
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv73
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !7
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !8

.lr.ph.split:                                     ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.az = lshr i32 %i.ay, 2                       ; 3 uses
  %i.ba = uitofp nneg i32 %i.ay to float
  %i.bb = fmul nnan float %i.ba, 2.500000e-01
  %i.bc = uitofp nneg i32 %i.az to float
  %i.bd = fsub float %i.bb, %i.bc                 ; 2 uses
  %i.be = add nuw nsw i32 %i.az, 1                ; 2 uses
  %i.bf = icmp slt i32 %i.be, %1
  %i.bg = zext nneg i32 %i.az to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = sitofp i32 %i.bi to float
  %i.bk = fsub nnan float 1.000000e+00, %i.bd
  %i.bl = fmul float %i.bk, %i.bj                 ; 2 uses
  br i1 %i.bf, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.split
  %i.bm = zext nneg i32 %i.be to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = sitofp i32 %i.bo to float
  %i.bq = fmul float %i.n, %i.bp
  %i.br = fmul float %i.bd, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.n, float %i.br)
  br label %bb.e

.critedge:                                        ; preds = %.lr.ph.split
  %i.bt = fmul float %i.n, %i.bl
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %.sink91 = phi float [ %i.bt, %.critedge ], [ %i.bs, %bb.d ]
  %i.bu = fptosi float %.sink91 to i32
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge69.split, label %.preheader, !llvm.loop !9

._crit_edge69.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = distinct !{!8, !10}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
