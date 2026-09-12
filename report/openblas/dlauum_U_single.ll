Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlauum_U_single?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dlauum_U_single(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = ptrtoint ptr %4 to i64
  %i.c = add nsw i64 %i.b, 1196031
  %i.d = and i64 %i.c, -16384
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17
  %i.h = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19   ; 14 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = load i64, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.n = sub nsw i64 %i.l, %i.m
  %i.o = add nsw i64 %i.j, 1
  %i.p = mul nsw i64 %i.m, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0180 = phi i64 [ %i.n, %bb.b ], [ %i.g, %bb.a ] ; 5 uses
  %.0179 = phi ptr [ %i.q, %bb.b ], [ %i.h, %bb.a ] ; 5 uses
  %i.r = icmp slt i64 %.0180, 33
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i32 @dlauu2_U(ptr noundef nonnull %0, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 0) #4 ; 0 uses
  br label %.loopexit193

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i64 %.0180, 1537
  %i.u = add nuw nsw i64 %.0180, 3
  %i.v = lshr i64 %i.u, 2
  %.0176 = select i1 %i.t, i64 %i.v, i64 384      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.k
  %.0178203 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.k ] ; 12 uses
  %i.x = sub nsw i64 %.0180, %.0178203
  %spec.select = call i64 @llvm.smin.i64(i64 %i.x, i64 %.0176) ; 19 uses
  %.not187 = icmp eq i64 %.0178203, 0
  br i1 %.not187, label %.loopexit192, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = mul nsw i64 %.0178203, %i.j              ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %.0179, i64 %.0178203
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = call i32 @dtrmm_outncopy(i64 noundef %spec.select, i64 noundef %spec.select, ptr noundef %i.aa, i64 noundef %i.j, i64 noundef 0, i64 noundef 0, ptr noundef %4) #4 ; 0 uses
  %i.ac = getelementptr [8 x i8], ptr %.0179, i64 %i.y ; 2 uses
  %i.ad = icmp slt i64 %spec.select, 1
  br label %.lr.ph.preheader

.loopexit189:                                     ; preds = %.loopexit, %.loopexit191
  br i1 %.not188, label %.lr.ph.preheader, label %.loopexit192, !llvm.loop !8

.lr.ph.preheader:                                 ; preds = %.loopexit189, %bb.g
  %.0174202 = phi i64 [ 0, %bb.g ], [ %i.as, %.loopexit189 ] ; 7 uses
  %i.ae = sub nuw nsw i64 %.0178203, %.0174202
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.ae, i64 8256) ; 2 uses
  %i.af = add nuw nsw i64 %spec.store.select, %.0174202 ; 6 uses
  %spec.store.select5 = call i64 @llvm.umin.i64(i64 %i.af, i64 192) ; 4 uses
  %i.ag = call i32 @dgemm_itcopy(i64 noundef %spec.select, i64 noundef %spec.store.select5, ptr noundef %i.ac, i64 noundef %i.j, ptr noundef %3) #4 ; 0 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0194 = phi i64 [ %i.aq, %.lr.ph ], [ %.0174202, %.lr.ph.preheader ] ; 6 uses
  %i.ah = sub nuw nsw i64 %i.af, %.0194
  %spec.store.select1 = call i64 @llvm.umin.i64(i64 %i.ah, i64 192) ; 2 uses
  %gep = getelementptr [8 x i8], ptr %i.ac, i64 %.0194
  %i.ai = sub nuw nsw i64 %.0194, %.0174202
  %i.aj = mul nsw i64 %i.ai, %spec.select
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.aj ; 2 uses
  %i.al = call i32 @dgemm_otcopy(i64 noundef %spec.select, i64 noundef %spec.store.select1, ptr noundef %gep, i64 noundef %i.j, ptr noundef %i.ak) #4 ; 0 uses
  %i.am = mul nsw i64 %.0194, %i.j
  %i.an = getelementptr inbounds [8 x i8], ptr %.0179, i64 %i.am
  %i.ao = sub nsw i64 0, %.0194
  %i.ap = call i32 @dsyrk_kernel_U(i64 noundef %spec.store.select5, i64 noundef %spec.store.select1, i64 noundef %spec.select, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.ak, ptr noundef %i.an, i64 noundef %i.j, i64 noundef %i.ao) #4 ; 0 uses
  %i.aq = add nuw nsw i64 %.0194, 192             ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.af
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph
  %i.as = add nuw nsw i64 %.0174202, 8256         ; 2 uses
  %.not188 = icmp samesign ult i64 %i.as, %.0178203 ; 2 uses
  %brmerge = select i1 %.not188, i1 true, i1 %i.ad ; 2 uses
  br i1 %brmerge, label %.loopexit191, label %.lr.ph196

.lr.ph196:                                        ; preds = %._crit_edge, %.lr.ph196
  %.0173195 = phi i64 [ %i.bc, %.lr.ph196 ], [ 0, %._crit_edge ] ; 5 uses
  %i.at = sub nuw nsw i64 %spec.select, %.0173195
  %i.au = call i64 @llvm.umin.i64(i64 %i.at, i64 192)
  %i.av = mul nuw nsw i64 %.0173195, %spec.select
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = add nuw nsw i64 %.0173195, %.0178203
  %i.ay = mul nsw i64 %i.ax, %i.j
  %i.az = getelementptr inbounds [8 x i8], ptr %.0179, i64 %i.ay
  %i.ba = sub nsw i64 0, %.0173195
  %i.bb = call i32 @dtrmm_kernel_RT(i64 noundef %spec.store.select5, i64 noundef %i.au, i64 noundef %spec.select, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.aw, ptr noundef %i.az, i64 noundef %i.j, i64 noundef %i.ba) #4 ; 0 uses
  %i.bc = add nuw nsw i64 %.0173195, 192          ; 2 uses
  %i.bd = icmp slt i64 %i.bc, %spec.select
  br i1 %i.bd, label %.lr.ph196, label %.loopexit191, !llvm.loop !10

.loopexit191:                                     ; preds = %.lr.ph196, %._crit_edge
  %i.be = icmp samesign ugt i64 %i.af, 192
  br i1 %i.be, label %.lr.ph201, label %.loopexit189

.lr.ph201:                                        ; preds = %.loopexit191
  %i.bf = mul nsw i64 %.0174202, %i.j
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph201, %.loopexit
  %.0175199 = phi i64 [ %spec.store.select5, %.lr.ph201 ], [ %i.by, %.loopexit ] ; 4 uses
  %i.bg = sub nuw nsw i64 %i.af, %.0175199
  %spec.store.select3 = call i64 @llvm.umin.i64(i64 %i.bg, i64 192) ; 3 uses
  %i.bh = getelementptr [8 x i8], ptr %.0179, i64 %.0175199 ; 3 uses
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.y
  %i.bj = call i32 @dgemm_itcopy(i64 noundef %spec.select, i64 noundef %spec.store.select3, ptr noundef %i.bi, i64 noundef %i.j, ptr noundef %3) #4 ; 0 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bh, i64 %i.bf
  %i.bl = sub nsw i64 %.0175199, %.0174202
  %i.bm = call i32 @dsyrk_kernel_U(i64 noundef %spec.store.select3, i64 noundef %spec.store.select, i64 noundef %spec.select, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.e, ptr noundef %i.bk, i64 noundef %i.j, i64 noundef %i.bl) #4 ; 0 uses
  br i1 %brmerge, label %.loopexit, label %.lr.ph198

.lr.ph198:                                        ; preds = %bb.h, %.lr.ph198
  %.1197 = phi i64 [ %i.bw, %.lr.ph198 ], [ 0, %bb.h ] ; 5 uses
  %i.bn = sub nuw nsw i64 %spec.select, %.1197
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bn, i64 192)
  %i.bp = mul nuw nsw i64 %.1197, %spec.select
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bp
  %i.br = add nuw nsw i64 %.1197, %.0178203
  %i.bs = mul nsw i64 %i.br, %i.j
  %i.bt = getelementptr [8 x i8], ptr %i.bh, i64 %i.bs
  %i.bu = sub nsw i64 0, %.1197
  %i.bv = call i32 @dtrmm_kernel_RT(i64 noundef %spec.store.select3, i64 noundef %i.bo, i64 noundef %spec.select, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.bq, ptr noundef %i.bt, i64 noundef %i.j, i64 noundef %i.bu) #4 ; 0 uses
  %i.bw = add nuw nsw i64 %.1197, 192             ; 2 uses
  %i.bx = icmp slt i64 %i.bw, %spec.select
  br i1 %i.bx, label %.lr.ph198, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph198, %bb.h
  %i.by = add nuw nsw i64 %.0175199, 192          ; 2 uses
  %i.bz = icmp samesign ult i64 %i.by, %i.af
  br i1 %i.bz, label %bb.h, label %.loopexit189, !llvm.loop !12

.loopexit192:                                     ; preds = %.loopexit189, %bb.f
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit192
  store i64 %.0178203, ptr %i.a, align 16, !tbaa !20
  %i.ca = add nsw i64 %spec.select, %.0178203
  br label %bb.k

bb.j:                                             ; preds = %.loopexit192
  %i.cb = load i64, ptr %2, align 8, !tbaa !20
  %i.cc = add nsw i64 %i.cb, %.0178203            ; 2 uses
  store i64 %i.cc, ptr %i.a, align 16, !tbaa !20
  %i.cd = add nsw i64 %i.cc, %spec.select
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge = phi i64 [ %i.cd, %bb.j ], [ %i.ca, %bb.i ]
  store i64 %storemerge, ptr %i.w, align 8, !tbaa !20
  %i.ce = call i32 @dlauum_U_single(ptr noundef nonnull %0, ptr poison, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %4, i64 poison) ; 0 uses
  %i.cf = add nuw nsw i64 %.0178203, %.0176       ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %.0180
  br i1 %i.cg, label %bb.f, label %.loopexit193, !llvm.loop !13

.loopexit193:                                     ; preds = %bb.k, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dlauu2_U(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dtrmm_outncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dgemm_itcopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dgemm_otcopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dsyrk_kernel_U(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dtrmm_kernel_RT(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

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
!8 = distinct !{!8, !21}
!9 = distinct !{!9, !21}
!10 = distinct !{!10, !21}
!11 = distinct !{!11, !21}
!12 = distinct !{!12, !21}
!13 = distinct !{!13, !21}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !14, i64 104, !15, i64 112, !14, i64 120, !5, i64 128}
!17 = !{!16, !15, i64 56}
!18 = !{!16, !14, i64 0}
!19 = !{!16, !15, i64 72}
!20 = !{!15, !15, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
end_hunk_0
