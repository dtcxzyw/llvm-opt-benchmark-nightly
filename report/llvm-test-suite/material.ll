Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/material?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@load_concs:.preheader.preheader
  %indvars.iv.5 = phi i64 [ %indvars.iv.next.5, %.lr.ph.5 ], [ 0, %._crit_edge.4 ] ; 2 uses
  %i.dh = tail call i32 @glibc_compat_rand() #7
  %i.di = sitofp i32 %i.dh to double
  %i.dj = fdiv double %i.di, f0x41DFFFFFFFC00000
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.5
  store double %i.dj, ptr %i.dk, align 8, !tbaa !22
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1 ; 2 uses
  %i.dl = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next.5, %i.dm
  br i1 %i.dn, label %.lr.ph.5, label %._crit_edge.5

._crit_edge.5:                                    ; preds = %.lr.ph.5, %._crit_edge.4
  %i.do = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph.6, label %._crit_edge.6

.lr.ph.6:                                         ; preds = %._crit_edge.5, %.lr.ph.6
  %indvars.iv.6 = phi i64 [ %indvars.iv.next.6, %.lr.ph.6 ], [ 0, %._crit_edge.5 ] ; 2 uses
  %i.dq = tail call i32 @glibc_compat_rand() #7
  %i.dr = sitofp i32 %i.dq to double
  %i.ds = fdiv double %i.dr, f0x41DFFFFFFFC00000
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.6
  store double %i.ds, ptr %i.dt, align 8, !tbaa !22
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1 ; 2 uses
  %i.du = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp slt i64 %indvars.iv.next.6, %i.dv
  br i1 %i.dw, label %.lr.ph.6, label %._crit_edge.6

._crit_edge.6:                                    ; preds = %.lr.ph.6, %._crit_edge.5
  %i.dx = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.7, label %._crit_edge.7

.lr.ph.7:                                         ; preds = %._crit_edge.6, %.lr.ph.7
  %indvars.iv.7 = phi i64 [ %indvars.iv.next.7, %.lr.ph.7 ], [ 0, %._crit_edge.6 ] ; 2 uses
  %i.dz = tail call i32 @glibc_compat_rand() #7
  %i.ea = sitofp i32 %i.dz to double
  %i.eb = fdiv double %i.ea, f0x41DFFFFFFFC00000
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.7
  store double %i.eb, ptr %i.ec, align 8, !tbaa !22
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1 ; 2 uses
  %i.ed = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp slt i64 %indvars.iv.next.7, %i.ee
  br i1 %i.ef, label %.lr.ph.7, label %._crit_edge.7

._crit_edge.7:                                    ; preds = %.lr.ph.7, %._crit_edge.6
  %i.eg = load i32, ptr %i.av, align 4, !tbaa !4
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.8, label %._crit_edge.8

.lr.ph.8:                                         ; preds = %._crit_edge.7, %.lr.ph.8
  %indvars.iv.8 = phi i64 [ %indvars.iv.next.8, %.lr.ph.8 ], [ 0, %._crit_edge.7 ] ; 2 uses
  %i.ei = tail call i32 @glibc_compat_rand() #7
  %i.ej = sitofp i32 %i.ei to double
  %i.ek = fdiv double %i.ej, f0x41DFFFFFFFC00000
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.8
  store double %i.ek, ptr %i.el, align 8, !tbaa !22
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.8, 1 ; 2 uses
  %i.em = load i32, ptr %i.av, align 4, !tbaa !4
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next.8, %i.en
  br i1 %i.eo, label %.lr.ph.8, label %._crit_edge.8

._crit_edge.8:                                    ; preds = %.lr.ph.8, %._crit_edge.7
  %i.ep = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph.9, label %._crit_edge.9

.lr.ph.9:                                         ; preds = %._crit_edge.8, %.lr.ph.9
  %indvars.iv.9 = phi i64 [ %indvars.iv.next.9, %.lr.ph.9 ], [ 0, %._crit_edge.8 ] ; 2 uses
  %i.er = tail call i32 @glibc_compat_rand() #7
  %i.es = sitofp i32 %i.er to double
  %i.et = fdiv double %i.es, f0x41DFFFFFFFC00000
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.9
  store double %i.et, ptr %i.eu, align 8, !tbaa !22
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.9, 1 ; 2 uses
  %i.ev = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next.9, %i.ew
  br i1 %i.ex, label %.lr.ph.9, label %._crit_edge.9

._crit_edge.9:                                    ; preds = %.lr.ph.9, %._crit_edge.8
  %i.ey = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph.10, label %._crit_edge.10

.lr.ph.10:                                        ; preds = %._crit_edge.9, %.lr.ph.10
  %indvars.iv.10 = phi i64 [ %indvars.iv.next.10, %.lr.ph.10 ], [ 0, %._crit_edge.9 ] ; 2 uses
  %i.fa = tail call i32 @glibc_compat_rand() #7
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = fdiv double %i.fb, f0x41DFFFFFFFC00000
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.10
  store double %i.fc, ptr %i.fd, align 8, !tbaa !22
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.10, 1 ; 2 uses
  %i.fe = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next.10, %i.ff
  br i1 %i.fg, label %.lr.ph.10, label %._crit_edge.10

._crit_edge.10:                                   ; preds = %.lr.ph.10, %._crit_edge.9
  %i.fh = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.11, label %._crit_edge.11

.lr.ph.11:                                        ; preds = %._crit_edge.10, %.lr.ph.11
  %indvars.iv.11 = phi i64 [ %indvars.iv.next.11, %.lr.ph.11 ], [ 0, %._crit_edge.10 ] ; 2 uses
  %i.fj = tail call i32 @glibc_compat_rand() #7
  %i.fk = sitofp i32 %i.fj to double
  %i.fl = fdiv double %i.fk, f0x41DFFFFFFFC00000
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.11
  store double %i.fl, ptr %i.fm, align 8, !tbaa !22
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.11, 1 ; 2 uses
  %i.fn = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp slt i64 %indvars.iv.next.11, %i.fo
  br i1 %i.fp, label %.lr.ph.11, label %._crit_edge.11

._crit_edge.11:                                   ; preds = %.lr.ph.11, %._crit_edge.10
  ret ptr %i.a

.lr.ph:                                           ; preds = %.preheader.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.fq = tail call i32 @glibc_compat_rand() #7
  %i.fr = sitofp i32 %i.fq to double
  %i.fs = fdiv double %i.fr, f0x41DFFFFFFFC00000
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.fs, ptr %i.ft, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fu = load i32, ptr %0, align 4, !tbaa !4
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp slt i64 %indvars.iv.next, %i.fv
  br i1 %i.fw, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @glibc_compat_rand() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @pick_mat(ptr noundef %0) local_unnamed_addr #0 {
._crit_edge:
  %i.a = tail call double @rn(ptr noundef %0) #7  ; 12 uses
  %i.b = fcmp uge double %i.a, 0.000000e+00
  br i1 %i.b, label %._crit_edge.1, label %bb.a

._crit_edge.1:                                    ; preds = %._crit_edge
  %i.c = fcmp uge double %i.a, 5.200000e-02
  br i1 %i.c, label %._crit_edge.2, label %bb.a

._crit_edge.2:                                    ; preds = %._crit_edge.1
  %i.d = fcmp uge double %i.a, 3.270000e-01
  br i1 %i.d, label %._crit_edge.3, label %bb.a

._crit_edge.3:                                    ; preds = %._crit_edge.2
  %i.e = fcmp uge double %i.a, 4.610000e-01
  br i1 %i.e, label %._crit_edge.4, label %bb.a

._crit_edge.4:                                    ; preds = %._crit_edge.3
  %i.f = fcmp uge double %i.a, f0x3FE3AE147AE147AF
  br i1 %i.f, label %._crit_edge.5, label %bb.a

._crit_edge.5:                                    ; preds = %._crit_edge.4
  %i.g = fcmp uge double %i.a, 6.790000e-01
  br i1 %i.g, label %._crit_edge.6, label %bb.a

._crit_edge.6:                                    ; preds = %._crit_edge.5
  %i.h = fcmp uge double %i.a, f0x3FE7D70A3D70A3D8
  br i1 %i.h, label %._crit_edge.7, label %bb.a

._crit_edge.7:                                    ; preds = %._crit_edge.6
  %i.i = fcmp uge double %i.a, 8.000000e-01
  br i1 %i.i, label %._crit_edge.8, label %bb.a

._crit_edge.8:                                    ; preds = %._crit_edge.7
  %i.j = fcmp uge double %i.a, 8.080000e-01
  br i1 %i.j, label %._crit_edge.9, label %bb.a

._crit_edge.9:                                    ; preds = %._crit_edge.8
  %i.k = fcmp uge double %i.a, f0x3FEA5604189374BD
  br i1 %i.k, label %._crit_edge.10, label %bb.a

._crit_edge.10:                                   ; preds = %._crit_edge.9
  %i.l = fcmp uge double %i.a, f0x3FEB22D0E560418A
  br i1 %i.l, label %._crit_edge.11, label %bb.a

._crit_edge.11:                                   ; preds = %._crit_edge.10
  %i.m = fcmp uge double %i.a, f0x3FEB8D4FDF3B645B
  br i1 %i.m, label %1, label %bb.a

1:                                                ; preds = %._crit_edge.11
  br label %bb.a

bb.a:                                             ; preds = %1, %._crit_edge.11, %._crit_edge.10, %._crit_edge.9, %._crit_edge.8, %._crit_edge.7, %._crit_edge.6, %._crit_edge.5, %._crit_edge.4, %._crit_edge.3, %._crit_edge.2, %._crit_edge.1, %._crit_edge
  %spec.select = phi i32 [ 0, %1 ], [ 0, %._crit_edge ], [ 1, %._crit_edge.1 ], [ 11, %._crit_edge.11 ], [ 2, %._crit_edge.2 ], [ 8, %._crit_edge.8 ], [ 3, %._crit_edge.3 ], [ 10, %._crit_edge.10 ], [ 4, %._crit_edge.4 ], [ 7, %._crit_edge.7 ], [ 5, %._crit_edge.5 ], [ 9, %._crit_edge.9 ], [ 6, %._crit_edge.6 ]
  ret i32 %spec.select
}

declare double @rn(ptr noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"", !10, i64 0, !12, i64 8, !14, i64 16}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p2 int", !13, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!"p2 double", !13, i64 0}
!15 = !{!9, !12, i64 8}
!16 = !{!9, !14, i64 16}
!17 = !{!18, !5, i64 4}
!18 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!19 = !{!10, !10, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 double", !11, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !6, i64 0}
end_hunk_0
