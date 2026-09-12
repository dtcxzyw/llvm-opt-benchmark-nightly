Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpotrf_L_single?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @dpotrf_L_single(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = ptrtoint ptr %4 to i64
  %i.c = add nsw i64 %i.b, 1196031
  %i.d = and i64 %i.c, -16384
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17   ; 12 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %i.m = load i64, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.n = sub nsw i64 %i.l, %i.m
  %i.o = add nsw i64 %i.j, 1
  %i.p = mul nsw i64 %i.m, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0165 = phi i64 [ %i.n, %bb.b ], [ %i.g, %bb.a ] ; 12 uses
  %.0164 = phi ptr [ %i.q, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %i.r = icmp slt i64 %.0165, 17
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i32 @dpotf2_L(ptr noundef nonnull %0, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 0) #4
  br label %.loopexit174

bb.e:                                             ; preds = %bb.c
  %i.t = tail call i64 @llvm.umin.i64(i64 %.0165, i64 1537)
  %spec.select = lshr i64 %i.t, 2                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.0162181 = phi i64 [ 0, %bb.e ], [ %i.br, %.loopexit ] ; 9 uses
  %i.v = sub nsw i64 %.0165, %.0162181            ; 2 uses
  %spec.select173 = call i64 @llvm.smin.i64(i64 %i.v, i64 %spec.select) ; 15 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %.0162181, ptr %i.a, align 16, !tbaa !18
  %i.w = add nsw i64 %spec.select173, %.0162181
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.x = load i64, ptr %2, align 8, !tbaa !18
  %i.y = add nsw i64 %i.x, %.0162181              ; 2 uses
  store i64 %i.y, ptr %i.a, align 16, !tbaa !18
  %i.z = add nsw i64 %i.y, %spec.select173
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi i64 [ %i.z, %bb.h ], [ %i.w, %bb.g ]
  store i64 %storemerge, ptr %i.u, align 8, !tbaa !18
  %i.aa = call i32 @dpotrf_L_single(ptr noundef nonnull %0, ptr poison, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %4, i64 poison) ; 2 uses
  %.not172 = icmp eq i32 %i.aa, 0
  br i1 %.not172, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = trunc i64 %.0162181 to i32
  %i.ac = add i32 %i.aa, %i.ab
  br label %.loopexit174

bb.k:                                             ; preds = %bb.i
  %i.ad = sub nsw i64 %i.v, %spec.select173       ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.af = mul nsw i64 %.0162181, %i.j             ; 4 uses
  %i.ag = getelementptr [8 x i8], ptr %.0164, i64 %.0162181
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %i.af
  %i.ai = call i32 @dtrsm_oltncopy(i64 noundef %spec.select173, i64 noundef %spec.select173, ptr noundef %i.ah, i64 noundef %i.j, i64 noundef 0, ptr noundef %4) #4 ; 0 uses
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ad, i64 7872) ; 2 uses
  %i.ak = add i64 %spec.select173, %.0162181      ; 5 uses
  %i.al = icmp slt i64 %i.ak, %.0165
  %i.am = add nsw i64 %i.aj, %i.ak                ; 3 uses
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.an = mul nsw i64 %i.ak, %i.j
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %._crit_edge184
  %.0160176 = phi i64 [ %i.ak, %.lr.ph ], [ %i.ba, %._crit_edge184 ] ; 5 uses
  %i.ao = sub nsw i64 %.0165, %.0160176
  %spec.store.select1 = call i64 @llvm.smin.i64(i64 %i.ao, i64 192) ; 4 uses
  %i.ap = getelementptr [8 x i8], ptr %.0164, i64 %.0160176 ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.af ; 3 uses
  %i.ar = call i32 @dgemm_itcopy(i64 noundef %spec.select173, i64 noundef %spec.store.select1, ptr noundef %i.aq, i64 noundef %i.j, ptr noundef %3) #4 ; 0 uses
  %i.as = call i32 @dtrsm_kernel_RN(i64 noundef %spec.store.select1, i64 noundef %spec.select173, i64 noundef %spec.select173, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %i.aq, i64 noundef %i.j, i64 noundef 0) #4 ; 0 uses
  %i.at = icmp slt i64 %.0160176, %i.am
  %i.au = sub i64 %.0160176, %i.ak                ; 2 uses
  br i1 %i.at, label %bb.n, label %._crit_edge184

bb.n:                                             ; preds = %bb.m
  %i.av = mul nsw i64 %i.au, %spec.select173
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.av
  %i.ax = call i32 @dgemm_otcopy(i64 noundef %spec.select173, i64 noundef %spec.store.select1, ptr noundef %i.aq, i64 noundef %i.j, ptr noundef %i.aw) #4 ; 0 uses
  br label %._crit_edge184

._crit_edge184:                                   ; preds = %bb.m, %bb.n
  %i.ay = getelementptr [8 x i8], ptr %i.ap, i64 %i.an
  %i.az = call i32 @dsyrk_kernel_L(i64 noundef %spec.store.select1, i64 noundef %i.aj, i64 noundef %spec.select173, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %i.e, ptr noundef %i.ay, i64 noundef %i.j, i64 noundef %i.au) #4 ; 0 uses
  %i.ba = add nsw i64 %.0160176, 192              ; 2 uses
  %i.bb = icmp slt i64 %i.ba, %.0165
  br i1 %i.bb, label %bb.m, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %._crit_edge184, %bb.l
  %invariant.gep = getelementptr [8 x i8], ptr %.0164, i64 %i.af
  %i.bc = icmp slt i64 %i.am, %.0165
  br i1 %i.bc, label %.lr.ph180, label %.loopexit

.lr.ph180:                                        ; preds = %._crit_edge, %bb.p
  %.0178 = phi i64 [ %i.bp, %bb.p ], [ %i.am, %._crit_edge ] ; 6 uses
  %i.bd = sub nsw i64 %.0165, %.0178
  %spec.store.select2 = call i64 @llvm.smin.i64(i64 %i.bd, i64 7872) ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0178
  %i.be = call i32 @dgemm_otcopy(i64 noundef %spec.select173, i64 noundef %spec.store.select2, ptr noundef %gep, i64 noundef %i.j, ptr noundef %i.e) #4 ; 0 uses
  %i.bf = mul nsw i64 %.0178, %i.j
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph180, %bb.o
  %.1177 = phi i64 [ %.0178, %.lr.ph180 ], [ %i.bn, %bb.o ] ; 4 uses
  %i.bg = sub nsw i64 %.0165, %.1177
  %spec.store.select3 = call i64 @llvm.smin.i64(i64 %i.bg, i64 192) ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %.0164, i64 %.1177 ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.af
  %i.bj = call i32 @dgemm_itcopy(i64 noundef %spec.select173, i64 noundef %spec.store.select3, ptr noundef %i.bi, i64 noundef %i.j, ptr noundef %3) #4 ; 0 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bh, i64 %i.bf
  %i.bl = sub nsw i64 %.1177, %.0178
  %i.bm = call i32 @dsyrk_kernel_L(i64 noundef %spec.store.select3, i64 noundef %spec.store.select2, i64 noundef %spec.select173, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %i.e, ptr noundef %i.bk, i64 noundef %i.j, i64 noundef %i.bl) #4 ; 0 uses
  %i.bn = add nsw i64 %.1177, 192                 ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %.0165
  br i1 %i.bo, label %bb.o, label %bb.p, !llvm.loop !9

bb.p:                                             ; preds = %bb.o
  %i.bp = add nsw i64 %.0178, 7872                ; 2 uses
  %i.bq = icmp slt i64 %i.bp, %.0165
  br i1 %i.bq, label %.lr.ph180, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.p, %._crit_edge, %bb.k
  %i.br = add nuw nsw i64 %.0162181, %spec.select ; 2 uses
  %i.bs = icmp slt i64 %i.br, %.0165
  br i1 %i.bs, label %bb.f, label %.loopexit174, !llvm.loop !11

.loopexit174:                                     ; preds = %.loopexit, %bb.j, %bb.d
  %.0166 = phi i32 [ %i.s, %bb.d ], [ %i.ac, %bb.j ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0166
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dpotf2_L(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dtrsm_oltncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dgemm_itcopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dtrsm_kernel_RN(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dgemm_otcopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dsyrk_kernel_L(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

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
!8 = distinct !{!8, !19}
!9 = distinct !{!9, !19}
!10 = distinct !{!10, !19}
!11 = distinct !{!11, !19}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !12, i64 104, !13, i64 112, !12, i64 120, !5, i64 128}
!15 = !{!14, !13, i64 56}
!16 = !{!14, !12, i64 0}
!17 = !{!14, !13, i64 72}
!18 = !{!13, !13, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
end_hunk_0
