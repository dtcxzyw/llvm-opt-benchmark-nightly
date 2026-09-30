Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp5dsp?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_vp5dsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @vp5_edge_filter_hor, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @vp5_edge_filter_ver, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vp5_edge_filter_hor(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) #1 {
.lver.check:
  %i.a = shl nsw i32 %2, 1                        ; 2 uses
  %ident.check.not = icmp eq i64 %1, 1
  br i1 %ident.check.not, label %.ph, label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.lver.check, %.ph.lver.orig
  %.022.lver.orig = phi i32 [ %i.ah, %.ph.lver.orig ], [ 0, %.lver.check ]
  %.01621.lver.orig = phi ptr [ %i.ag, %.ph.lver.orig ], [ %0, %.lver.check ] ; 6 uses
  %i.b = getelementptr inbounds i8, ptr %.01621.lver.orig, i64 -2
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %.01621.lver.orig, align 1, !tbaa !9
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.01621.lver.orig, i64 -1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = sub nsw i32 %i.f, %i.i
  %i.k = mul nsw i32 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %.01621.lver.orig, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i8 %i.m to i32
  %i.o = add nuw nsw i32 %i.d, 4
  %i.p = sub nsw i32 %i.o, %i.n
  %i.q = add nsw i32 %i.p, %i.k                   ; 2 uses
  %i.r = ashr i32 %i.q, 3
  %i.s = ashr i32 %i.q, 31                        ; 4 uses
  %i.t = xor i32 %i.s, %i.r
  %i.u = sub nsw i32 %i.t, %i.s                   ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.a
  %i.w = select i1 %i.v, i32 %i.u, i32 0
  %i.x = sub nsw i32 %i.w, %2
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true)
  %i.z = add i32 %i.s, %2
  %i.aa = sub i32 %i.z, %i.y
  %i.ab = xor i32 %i.aa, %i.s                     ; 2 uses
  %i.ac = add nsw i32 %i.ab, %i.i                 ; 3 uses
  %.not.i17.lver.orig = icmp ult i32 %i.ac, 256
  %isnotneg.i18.lver.orig = icmp sgt i32 %i.ac, -1
  %3 = sext i1 %isnotneg.i18.lver.orig to i8
  %i.ad = trunc nuw i32 %i.ac to i8
  %.0.i19.lver.orig = select i1 %.not.i17.lver.orig, i8 %i.ad, i8 %3
  store i8 %.0.i19.lver.orig, ptr %i.g, align 1, !tbaa !9
  %i.ae = sub nsw i32 %i.f, %i.ab                 ; 3 uses
  %.not.i.lver.orig = icmp ult i32 %i.ae, 256
  %isnotneg.i.lver.orig = icmp sgt i32 %i.ae, -1
  %4 = sext i1 %isnotneg.i.lver.orig to i8
  %i.af = trunc nuw i32 %i.ae to i8
  %.0.i.lver.orig = select i1 %.not.i.lver.orig, i8 %i.af, i8 %4
  store i8 %.0.i.lver.orig, ptr %.01621.lver.orig, align 1, !tbaa !9
  %i.ag = getelementptr inbounds i8, ptr %.01621.lver.orig, i64 %1
  %i.ah = add nuw nsw i32 %.022.lver.orig, 1      ; 2 uses
  %exitcond.not.lver.orig = icmp eq i32 %i.ah, 12
  br i1 %exitcond.not.lver.orig, label %.loopexit, label %.ph.lver.orig, !llvm.loop !15

.ph:                                              ; preds = %.lver.check
  %scevgep = getelementptr i8, ptr %0, i64 -1
  %load_initial = load i8, ptr %scevgep, align 1
  br label %bb.a

bb.a:                                             ; preds = %.ph, %bb.a
  %store_forwarded = phi i8 [ %load_initial, %.ph ], [ %.0.i, %bb.a ]
  %.022 = phi i32 [ 0, %.ph ], [ %i.bm, %bb.a ]
  %.01621 = phi ptr [ %0, %.ph ], [ %i.bl, %bb.a ] ; 6 uses
  %i.ai = getelementptr inbounds i8, ptr %.01621, i64 -2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.ak = zext i8 %i.aj to i32
  %i.al = load i8, ptr %.01621, align 1, !tbaa !9
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.01621, i64 -1
  %5 = zext i8 %store_forwarded to i32            ; 2 uses
  %i.ao = sub nsw i32 %i.am, %5
  %i.ap = mul nsw i32 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %.01621, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = zext i8 %i.ar to i32
  %i.at = add nuw nsw i32 %i.ak, 4
  %i.au = sub nsw i32 %i.at, %i.as
  %i.av = add nsw i32 %i.au, %i.ap                ; 2 uses
  %i.aw = ashr i32 %i.av, 3
  %i.ax = ashr i32 %i.av, 31                      ; 4 uses
  %i.ay = xor i32 %i.ax, %i.aw
  %i.az = sub nsw i32 %i.ay, %i.ax                ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.a
  %i.bb = select i1 %i.ba, i32 %i.az, i32 0
  %i.bc = sub nsw i32 %i.bb, %2
  %i.bd = tail call i32 @llvm.abs.i32(i32 %i.bc, i1 true)
  %i.be = add i32 %i.ax, %2
  %i.bf = sub i32 %i.be, %i.bd
  %i.bg = xor i32 %i.bf, %i.ax                    ; 2 uses
  %i.bh = add nsw i32 %i.bg, %5                   ; 3 uses
  %.not.i17 = icmp ult i32 %i.bh, 256
  %isnotneg.i18 = icmp sgt i32 %i.bh, -1
  %6 = sext i1 %isnotneg.i18 to i8
  %i.bi = trunc nuw i32 %i.bh to i8
  %.0.i19 = select i1 %.not.i17, i8 %i.bi, i8 %6
  store i8 %.0.i19, ptr %i.an, align 1, !tbaa !9
  %i.bj = sub nsw i32 %i.am, %i.bg                ; 3 uses
  %.not.i = icmp ult i32 %i.bj, 256
  %isnotneg.i = icmp sgt i32 %i.bj, -1
  %7 = sext i1 %isnotneg.i to i8
  %i.bk = trunc nuw i32 %i.bj to i8
  %.0.i = select i1 %.not.i, i8 %i.bk, i8 %7      ; 2 uses
  store i8 %.0.i, ptr %.01621, align 1, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %.01621, i64 %1
  %i.bm = add nuw nsw i32 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bm, 12
  br i1 %exitcond.not, label %.loopexit, label %bb.a, !llvm.loop !15

.loopexit:                                        ; preds = %.ph.lver.orig, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vp5_edge_filter_ver(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) #1 {
bb.a:
  %sext = mul i64 %1, -8589934592
  %i.a = ashr exact i64 %sext, 32
  %i.b = sub nsw i64 0, %1
  %i.c = shl nsw i32 %2, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.026 = phi i32 [ 0, %bb.a ], [ %i.al, %bb.b ]
  %.02025 = phi ptr [ %0, %bb.a ], [ %i.ak, %bb.b ] ; 7 uses
  %i.d = getelementptr inbounds i8, ptr %.02025, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %i.f = zext i8 %i.e to i32
  %i.g = load i8, ptr %.02025, align 1, !tbaa !9
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds i8, ptr %.02025, i64 %i.b ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = sub nsw i32 %i.h, %i.k
  %i.m = mul nsw i32 %i.l, 3
  %i.n = getelementptr inbounds i8, ptr %.02025, i64 %1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.f, 4
  %i.r = sub nsw i32 %i.q, %i.p
  %i.s = add nsw i32 %i.r, %i.m                   ; 2 uses
  %i.t = ashr i32 %i.s, 3
  %i.u = ashr i32 %i.s, 31                        ; 4 uses
  %i.v = xor i32 %i.u, %i.t
  %i.w = sub nsw i32 %i.v, %i.u                   ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.c
  %i.y = select i1 %i.x, i32 %i.w, i32 0
  %i.z = sub nsw i32 %i.y, %2
  %i.aa = tail call i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %i.ab = add i32 %i.u, %2
  %i.ac = sub i32 %i.ab, %i.aa
  %i.ad = xor i32 %i.ac, %i.u                     ; 2 uses
  %i.ae = add nsw i32 %i.ad, %i.k                 ; 3 uses
  %.not.i21 = icmp ult i32 %i.ae, 256
  %isnotneg.i22 = icmp sgt i32 %i.ae, -1
  %3 = sext i1 %isnotneg.i22 to i8
  %i.af = trunc nuw i32 %i.ae to i8
  %.0.i23 = select i1 %.not.i21, i8 %i.af, i8 %3
  store i8 %.0.i23, ptr %i.i, align 1, !tbaa !9
  %i.ag = load i8, ptr %.02025, align 1, !tbaa !9
  %i.ah = zext i8 %i.ag to i32
  %i.ai = sub nsw i32 %i.ah, %i.ad                ; 3 uses
  %.not.i = icmp ult i32 %i.ai, 256
  %isnotneg.i = icmp sgt i32 %i.ai, -1
  %4 = sext i1 %isnotneg.i to i8
  %i.aj = trunc nuw i32 %i.ai to i8
  %.0.i = select i1 %.not.i, i8 %i.aj, i8 %4
  store i8 %.0.i, ptr %.02025, align 1, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %.02025, i64 1
  %i.al = add nuw nsw i32 %.026, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, 12
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !16

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"VP5DSPContext", !11, i64 0, !11, i64 8}
!13 = !{!12, !11, i64 0}
!14 = !{!12, !11, i64 8}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
end_hunk_0
