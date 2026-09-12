Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpotrf_U_single?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @dpotrf_U_single(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = ptrtoint ptr %4 to i64
  %i.c = add nsw i64 %i.b, 1196031
  %i.d = and i64 %i.c, -16384
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %i.h = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 16 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %i.m = load i64, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.n = sub nsw i64 %i.l, %i.m
  %i.o = add nsw i64 %i.j, 1
  %i.p = mul nsw i64 %i.m, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0146 = phi i64 [ %i.n, %bb.b ], [ %i.g, %bb.a ] ; 10 uses
  %.0145 = phi ptr [ %i.q, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %i.r = icmp slt i64 %.0146, 17
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i32 @dpotf2_U(ptr noundef nonnull %0, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 0) #4
  br label %.loopexit156

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i64 %.0146, 1537
  %i.u = add nuw nsw i64 %.0146, 3
  %i.v = lshr i64 %i.u, 2
  %.0143 = select i1 %i.t, i64 %i.v, i64 384      ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = add i64 %i.j, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.0139172 = phi i64 [ 0, %bb.e ], [ %.pre-phi, %.loopexit ] ; 9 uses
  %i.y = sub nuw nsw i64 %.0146, %.0139172        ; 2 uses
  %i.z = icmp sgt i64 %i.y, %.0143
  %spec.select = call i64 @llvm.smin.i64(i64 %i.y, i64 %.0143)
  %spec.select.fr = freeze i64 %spec.select       ; 15 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %.0139172, ptr %i.a, align 16, !tbaa !19
  %i.aa = add nsw i64 %spec.select.fr, %.0139172
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %2, align 8, !tbaa !19
  %i.ac = add nsw i64 %i.ab, %.0139172            ; 2 uses
  store i64 %i.ac, ptr %i.a, align 16, !tbaa !19
  %i.ad = add nsw i64 %i.ac, %spec.select.fr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi i64 [ %i.ad, %bb.h ], [ %i.aa, %bb.g ]
  store i64 %storemerge, ptr %i.w, align 8, !tbaa !19
  %i.ae = call i32 @dpotrf_U_single(ptr noundef nonnull %0, ptr poison, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %4, i64 poison) ; 2 uses
  %.not155 = icmp eq i32 %i.ae, 0
  br i1 %.not155, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = trunc i64 %.0139172 to i32
  %i.ag = add i32 %i.ae, %i.af
  br label %.loopexit156

bb.k:                                             ; preds = %bb.i
  br i1 %i.z, label %bb.l, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.k
  %.pre = add nuw nsw i64 %.0139172, %.0143
  br label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ah = mul i64 %.0139172, %i.x
  %i.ai = getelementptr inbounds [8 x i8], ptr %.0145, i64 %i.ah
  %i.aj = call i32 @dtrsm_iunncopy(i64 noundef %.0143, i64 noundef %.0143, ptr noundef %i.ai, i64 noundef %i.j, i64 noundef 0, ptr noundef %4) #4 ; 0 uses
  %i.ak = add nuw nsw i64 %.0139172, %.0143       ; 10 uses
  %i.al = icmp slt i64 %i.ak, %.0146
  br i1 %i.al, label %.lr.ph167, label %.loopexit

.lr.ph167:                                        ; preds = %bb.l
  %i.am = getelementptr [8 x i8], ptr %.0145, i64 %.0139172 ; 4 uses
  %i.an = icmp sgt i64 %spec.select.fr, 0
  br i1 %i.an, label %.lr.ph167.split.us, label %.lr.ph167.split

.lr.ph167.split.us:                               ; preds = %.lr.ph167, %._crit_edge.us171
  %.0164.us = phi i64 [ %i.bu, %._crit_edge.us171 ], [ %i.ak, %.lr.ph167 ] ; 7 uses
  %i.ao = sub nuw nsw i64 %.0146, %.0164.us       ; 2 uses
  %spec.store.select.us = call i64 @llvm.smin.i64(i64 %i.ao, i64 8256) ; 2 uses
  %i.ap = add nsw i64 %spec.store.select.us, %.0164.us ; 5 uses
  %i.aq = icmp sgt i64 %i.ao, 0
  br i1 %i.aq, label %.lr.ph.us.us, label %.preheader.us

.lr.ph.us.us:                                     ; preds = %.lr.ph167.split.us, %._crit_edge.us.us
  %.0140160.us.us = phi i64 [ %i.be, %._crit_edge.us.us ], [ %.0164.us, %.lr.ph167.split.us ] ; 4 uses
  %i.ar = sub nuw nsw i64 %i.ap, %.0140160.us.us
  %spec.store.select1.us.us = call i64 @llvm.smin.i64(i64 %i.ar, i64 2) ; 2 uses
  %i.as = mul nsw i64 %.0140160.us.us, %i.j
  %i.at = getelementptr [8 x i8], ptr %i.am, i64 %i.as ; 2 uses
  %i.au = sub nuw nsw i64 %.0140160.us.us, %.0164.us
  %i.av = mul nsw i64 %i.au, %spec.select.fr
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.av ; 2 uses
  %i.ax = call i32 @dgemm_oncopy(i64 noundef %spec.select.fr, i64 noundef %spec.store.select1.us.us, ptr noundef %i.at, i64 noundef %i.j, ptr noundef %i.aw) #4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.us.us
  %.0142159.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.bc, %bb.m ] ; 5 uses
  %i.ay = sub nuw nsw i64 %spec.select.fr, %.0142159.us.us
  %spec.store.select2.us.us = call i64 @llvm.smin.i64(i64 %i.ay, i64 192)
  %i.az = mul nuw nsw i64 %.0142159.us.us, %spec.select.fr
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.az
  %gep.us.us = getelementptr [8 x i8], ptr %i.at, i64 %.0142159.us.us
  %i.bb = call i32 @dtrsm_kernel_LT(i64 noundef %spec.store.select2.us.us, i64 noundef %spec.store.select1.us.us, i64 noundef %spec.select.fr, double noundef -1.000000e+00, ptr noundef %i.ba, ptr noundef %i.aw, ptr noundef %gep.us.us, i64 noundef %i.j, i64 noundef %.0142159.us.us) #4 ; 0 uses
  %i.bc = add nuw nsw i64 %.0142159.us.us, 192    ; 2 uses
  %i.bd = icmp slt i64 %i.bc, %spec.select.fr
  br i1 %i.bd, label %bb.m, label %._crit_edge.us.us, !llvm.loop !8

._crit_edge.us.us:                                ; preds = %bb.m
  %i.be = add nuw nsw i64 %.0140160.us.us, 2      ; 2 uses
  %i.bf = icmp slt i64 %i.be, %i.ap
  br i1 %i.bf, label %.lr.ph.us.us, label %.preheader.us, !llvm.loop !9

.preheader.us:                                    ; preds = %._crit_edge.us.us, %.lr.ph167.split.us
  %i.bg = icmp slt i64 %i.ak, %i.ap
  br i1 %i.bg, label %.lr.ph.us169, label %._crit_edge.us171

bb.n:                                             ; preds = %.lr.ph.us169, %bb.q
  %.1163.us = phi i64 [ %i.ak, %.lr.ph.us169 ], [ %i.bs, %bb.q ] ; 5 uses
  %i.bh = sub nsw i64 %i.ap, %.1163.us            ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 383
  br i1 %i.bi, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = icmp sgt i64 %i.bh, 192
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = lshr i64 %i.bh, 1
  %i.bl = add nuw nsw i64 %i.bk, 31
  %i.bm = and i64 %i.bl, 9223372036854775776
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.0141.us = phi i64 [ %i.bh, %bb.o ], [ %i.bm, %bb.p ], [ 192, %bb.n ] ; 3 uses
  %i.bn = mul nsw i64 %.1163.us, %i.j
  %i.bo = getelementptr [8 x i8], ptr %i.am, i64 %i.bn
  %i.bp = call i32 @dgemm_incopy(i64 noundef %spec.select.fr, i64 noundef %.0141.us, ptr noundef %i.bo, i64 noundef %i.j, ptr noundef %3) #4 ; 0 uses
  %gep.us168 = getelementptr [8 x i8], ptr %invariant.gep.us170, i64 %.1163.us
  %i.bq = sub nsw i64 %.1163.us, %.0164.us
  %i.br = call i32 @dsyrk_kernel_U(i64 noundef %.0141.us, i64 noundef %spec.store.select.us, i64 noundef %spec.select.fr, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %i.e, ptr noundef %gep.us168, i64 noundef %i.j, i64 noundef %i.bq) #4 ; 0 uses
  %i.bs = add nsw i64 %.0141.us, %.1163.us        ; 2 uses
  %i.bt = icmp slt i64 %i.bs, %i.ap
  br i1 %i.bt, label %bb.n, label %._crit_edge.us171, !llvm.loop !10

._crit_edge.us171:                                ; preds = %bb.q, %.preheader.us
  %i.bu = add nuw nsw i64 %.0164.us, 8256         ; 2 uses
  %i.bv = icmp slt i64 %i.bu, %.0146
  br i1 %i.bv, label %.lr.ph167.split.us, label %.loopexit, !llvm.loop !11

.lr.ph.us169:                                     ; preds = %.preheader.us
  %i.bw = mul nsw i64 %.0164.us, %i.j
  %invariant.gep.us170 = getelementptr [8 x i8], ptr %.0145, i64 %i.bw
  br label %bb.n

.lr.ph167.split:                                  ; preds = %.lr.ph167, %._crit_edge
  %.0164 = phi i64 [ %i.cy, %._crit_edge ], [ %i.ak, %.lr.ph167 ] ; 7 uses
  %i.bx = sub nuw nsw i64 %.0146, %.0164          ; 2 uses
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.bx, i64 8256) ; 2 uses
  %i.by = add nsw i64 %spec.store.select, %.0164  ; 5 uses
  %i.bz = icmp sgt i64 %i.bx, 0
  br i1 %i.bz, label %.lr.ph162, label %.preheader

.preheader:                                       ; preds = %.lr.ph162, %.lr.ph167.split
  %i.ca = icmp slt i64 %i.ak, %i.by
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.cb = mul nsw i64 %.0164, %i.j
  %invariant.gep = getelementptr [8 x i8], ptr %.0145, i64 %i.cb
  br label %bb.r

.lr.ph162:                                        ; preds = %.lr.ph167.split, %.lr.ph162
  %.0140160 = phi i64 [ %i.cj, %.lr.ph162 ], [ %.0164, %.lr.ph167.split ] ; 4 uses
  %i.cc = sub nuw nsw i64 %i.by, %.0140160
  %spec.store.select1 = call i64 @llvm.smin.i64(i64 %i.cc, i64 2)
  %i.cd = mul nsw i64 %.0140160, %i.j
  %i.ce = getelementptr [8 x i8], ptr %i.am, i64 %i.cd
  %i.cf = sub nuw nsw i64 %.0140160, %.0164
  %i.cg = mul nsw i64 %i.cf, %spec.select.fr
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cg
  %i.ci = call i32 @dgemm_oncopy(i64 noundef %spec.select.fr, i64 noundef %spec.store.select1, ptr noundef %i.ce, i64 noundef %i.j, ptr noundef %i.ch) #4 ; 0 uses
  %i.cj = add nuw nsw i64 %.0140160, 2            ; 2 uses
  %i.ck = icmp slt i64 %i.cj, %i.by
  br i1 %i.ck, label %.lr.ph162, label %.preheader, !llvm.loop !9

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %.1163 = phi i64 [ %i.ak, %.lr.ph ], [ %i.cw, %bb.u ] ; 5 uses
  %i.cl = sub nsw i64 %i.by, %.1163               ; 4 uses
  %i.cm = icmp sgt i64 %i.cl, 383
  br i1 %i.cm, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = icmp sgt i64 %i.cl, 192
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.co = lshr i64 %i.cl, 1
  %i.cp = add nuw nsw i64 %i.co, 31
  %i.cq = and i64 %i.cp, 9223372036854775776
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %.0141 = phi i64 [ %i.cl, %bb.s ], [ %i.cq, %bb.t ], [ 192, %bb.r ] ; 3 uses
  %i.cr = mul nsw i64 %.1163, %i.j
  %i.cs = getelementptr [8 x i8], ptr %i.am, i64 %i.cr
  %i.ct = call i32 @dgemm_incopy(i64 noundef %spec.select.fr, i64 noundef %.0141, ptr noundef %i.cs, i64 noundef %i.j, ptr noundef %3) #4 ; 0 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.1163
  %i.cu = sub nsw i64 %.1163, %.0164
  %i.cv = call i32 @dsyrk_kernel_U(i64 noundef %.0141, i64 noundef %spec.store.select, i64 noundef %spec.select.fr, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %i.e, ptr noundef %gep, i64 noundef %i.j, i64 noundef %i.cu) #4 ; 0 uses
  %i.cw = add nsw i64 %.0141, %.1163              ; 2 uses
  %i.cx = icmp slt i64 %i.cw, %i.by
  br i1 %i.cx, label %bb.r, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.u, %.preheader
  %i.cy = add nuw nsw i64 %.0164, 8256            ; 2 uses
  %i.cz = icmp slt i64 %i.cy, %.0146
  br i1 %i.cz, label %.lr.ph167.split, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.us171, %..loopexit_crit_edge, %bb.l
  %.pre-phi = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.ak, %._crit_edge.us171 ], [ %i.ak, %bb.l ], [ %i.ak, %._crit_edge ] ; 2 uses
  %i.da = icmp slt i64 %.pre-phi, %.0146
  br i1 %i.da, label %bb.f, label %.loopexit156, !llvm.loop !12

.loopexit156:                                     ; preds = %.loopexit, %bb.j, %bb.d
  %.0147 = phi i32 [ %i.s, %bb.d ], [ %i.ag, %bb.j ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0147
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dpotf2_U(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dtrsm_iunncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dgemm_oncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dtrsm_kernel_LT(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dgemm_incopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dsyrk_kernel_U(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !20}
!9 = distinct !{!9, !20}
!10 = distinct !{!10, !20}
!11 = distinct !{!11, !20}
!12 = distinct !{!12, !20}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !13, i64 104, !14, i64 112, !13, i64 120, !5, i64 128}
!16 = !{!15, !14, i64 56}
!17 = !{!15, !13, i64 0}
!18 = !{!15, !14, i64 72}
!19 = !{!14, !14, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
end_hunk_0
