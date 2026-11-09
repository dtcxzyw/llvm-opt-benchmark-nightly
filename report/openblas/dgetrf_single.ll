Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgetrf_single?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @dgetrf_single(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %2, align 8, !tbaa !22     ; 4 uses
  %i.l = sub nsw i64 %i.c, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = sub nsw i64 %i.n, %i.k
  %i.p = add nsw i64 %i.h, 1
  %i.q = mul nsw i64 %i.k, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.q
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0191 = phi i64 [ %i.l, %bb.b ], [ %i.c, %bb.a ] ; 5 uses
  %.0190 = phi i64 [ %i.o, %bb.b ], [ %i.e, %bb.a ] ; 5 uses
  %.0189 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]  ; 6 uses
  %.0 = phi ptr [ %i.r, %bb.b ], [ %i.f, %bb.a ]  ; 5 uses
  %i.s = icmp slt i64 %.0191, 1
  %i.t = icmp slt i64 %.0190, 1
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call i64 @llvm.umin.i64(i64 %.0191, i64 %.0190) ; 6 uses
  %i.v = lshr i64 %i.u, 1
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = and i64 %i.w, 9223372036854775806        ; 2 uses
  %spec.store.select7 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 384) ; 5 uses
  %i.y = icmp samesign ult i64 %i.x, 5
  br i1 %i.y, label %bb.e, label %.lr.ph215

bb.e:                                             ; preds = %bb.d
  %i.z = tail call i32 @dgetf2_k(ptr noundef nonnull %0, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 0) #4
  br label %.loopexit

.lr.ph215:                                        ; preds = %bb.d
  %i.aa = mul nuw nsw i64 %spec.store.select7, %spec.store.select7
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aa
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = add i64 %i.ac, 16383
  %i.ae = and i64 %i.ad, -16384
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

.lr.ph217:                                        ; preds = %.loopexit201
  %i.ah = add i64 %.0189, 1
  %i.ai = add nsw i64 %i.u, %.0189
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph215, %.loopexit201
  %.0182213 = phi i32 [ 0, %.lr.ph215 ], [ %.1, %.loopexit201 ] ; 2 uses
  %.0187212 = phi i64 [ 0, %.lr.ph215 ], [ %i.cf, %.loopexit201 ] ; 8 uses
  %i.aj = sub nuw nsw i64 %i.u, %.0187212
  %spec.select = call i64 @llvm.smin.i64(i64 %i.aj, i64 %spec.store.select7) ; 12 uses
  %i.ak = mul nsw i64 %.0187212, %i.h
  %i.al = getelementptr inbounds [8 x i8], ptr %.0, i64 %i.ak ; 2 uses
  %i.am = add nsw i64 %.0187212, %.0189           ; 3 uses
  store i64 %i.am, ptr %i.a, align 16, !tbaa !22
  %i.an = add nsw i64 %spec.select, %i.am
  store i64 %i.an, ptr %i.ag, align 8, !tbaa !22
  %i.ao = call i32 @dgetrf_single(ptr noundef nonnull %0, ptr poison, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %4, i64 poison) ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = icmp ne i32 %.0182213, 0
  %or.cond3 = select i1 %i.ap, i1 true, i1 %i.aq
  %i.ar = trunc i64 %.0187212 to i32
  %i.as = add i32 %i.ao, %i.ar
  %.1 = select i1 %or.cond3, i32 %.0182213, i32 %i.as ; 2 uses
  %i.at = add nuw nsw i64 %spec.select, %.0187212 ; 5 uses
  %i.au = icmp slt i64 %i.at, %.0190
  br i1 %i.au, label %bb.g, label %.loopexit201

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0187212
  %i.aw = call i32 @dtrsm_iltucopy(i64 noundef %spec.select, i64 noundef %spec.select, ptr noundef %i.av, i64 noundef %i.h, i64 noundef 0, ptr noundef %4) #4 ; 0 uses
  %i.ax = add nsw i64 %i.am, 1
  %i.ay = add nsw i64 %i.at, %.0189
  %i.az = getelementptr [8 x i8], ptr %.0, i64 %.0187212
  %i.ba = icmp slt i64 %i.at, %.0191
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge208
  %.0186211 = phi i64 [ %i.at, %bb.g ], [ %i.cd, %._crit_edge208 ] ; 6 uses
  %i.bb = sub nuw nsw i64 %.0190, %.0186211       ; 2 uses
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.bb, i64 8256) ; 2 uses
  %i.bc = add nuw nsw i64 %spec.store.select, %.0186211 ; 2 uses
  %i.bd = icmp sgt i64 %i.bb, 0
  br i1 %i.bd, label %.lr.ph.preheader, label %.preheader200

.preheader200:                                    ; preds = %._crit_edge, %bb.h
  br i1 %i.ba, label %.lr.ph207, label %._crit_edge208

.lr.ph207:                                        ; preds = %.preheader200
  %i.be = mul nsw i64 %.0186211, %i.h
  %invariant.gep209 = getelementptr [8 x i8], ptr %.0, i64 %i.be
  br label %bb.i

.lr.ph.preheader:                                 ; preds = %bb.h, %._crit_edge
  %.0183203 = phi i64 [ %i.bv, %._crit_edge ], [ %.0186211, %bb.h ] ; 4 uses
  %i.bf = sub nuw nsw i64 %i.bc, %.0183203
  %spec.store.select4 = call i64 @llvm.smin.i64(i64 %i.bf, i64 2) ; 3 uses
  %i.bg = mul nsw i64 %.0183203, %i.h             ; 2 uses
  %i.bh = sub nsw i64 %i.bg, %.0189
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0, i64 %i.bh
  %i.bj = call i32 @dlaswp_plus(i64 noundef %spec.store.select4, i64 noundef %i.ax, i64 noundef %i.ay, double noundef 0.000000e+00, ptr noundef %i.bi, i64 noundef %i.h, ptr noundef null, i64 noundef 0, ptr noundef %i.j, i64 noundef 1) #4 ; 0 uses
  %i.bk = getelementptr [8 x i8], ptr %i.az, i64 %i.bg ; 2 uses
  %i.bl = sub nuw nsw i64 %.0183203, %.0186211
  %i.bm = mul nsw i64 %i.bl, %spec.select
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bm ; 2 uses
  %i.bo = call i32 @dgemm_oncopy(i64 noundef %spec.select, i64 noundef %spec.store.select4, ptr noundef %i.bk, i64 noundef %i.h, ptr noundef %i.bn) #4 ; 0 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0184202 = phi i64 [ %i.bt, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.bp = sub nuw nsw i64 %spec.select, %.0184202
  %spec.store.select5 = call i64 @llvm.umin.i64(i64 %i.bp, i64 192)
  %i.bq = mul nuw nsw i64 %.0184202, %spec.select
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bq
  %gep = getelementptr [8 x i8], ptr %i.bk, i64 %.0184202
  %i.bs = call i32 @dtrsm_kernel_LT(i64 noundef %spec.store.select5, i64 noundef %spec.store.select4, i64 noundef %spec.select, double noundef -1.000000e+00, ptr noundef %i.br, ptr noundef %i.bn, ptr noundef %gep, i64 noundef %i.h, i64 noundef %.0184202) #4 ; 0 uses
  %i.bt = add nuw nsw i64 %.0184202, 192          ; 2 uses
  %i.bu = icmp samesign ult i64 %i.bt, %spec.select
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph
  %i.bv = add nuw nsw i64 %.0183203, 2            ; 2 uses
  %i.bw = icmp slt i64 %i.bv, %i.bc
  br i1 %i.bw, label %.lr.ph.preheader, label %.preheader200, !llvm.loop !9

bb.i:                                             ; preds = %.lr.ph207, %bb.i
  %.0185206 = phi i64 [ %i.at, %.lr.ph207 ], [ %i.cb, %bb.i ] ; 4 uses
  %i.bx = sub nuw nsw i64 %.0191, %.0185206
  %spec.store.select6 = call i64 @llvm.smin.i64(i64 %i.bx, i64 192) ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0185206
  %i.bz = call i32 @dgemm_itcopy(i64 noundef %spec.select, i64 noundef %spec.store.select6, ptr noundef %i.by, i64 noundef %i.h, ptr noundef %3) #4 ; 0 uses
  %gep210 = getelementptr [8 x i8], ptr %invariant.gep209, i64 %.0185206
  %i.ca = call i32 @dgemm_kernel(i64 noundef %spec.store.select6, i64 noundef %spec.store.select, i64 noundef %spec.select, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %i.af, ptr noundef %gep210, i64 noundef %i.h) #4 ; 0 uses
  %i.cb = add nuw nsw i64 %.0185206, 192          ; 2 uses
  %i.cc = icmp slt i64 %i.cb, %.0191
  br i1 %i.cc, label %bb.i, label %._crit_edge208, !llvm.loop !10

._crit_edge208:                                   ; preds = %bb.i, %.preheader200
  %i.cd = add nuw nsw i64 %.0186211, 8256         ; 2 uses
  %i.ce = icmp slt i64 %i.cd, %.0190
  br i1 %i.ce, label %bb.h, label %.loopexit201, !llvm.loop !11

.loopexit201:                                     ; preds = %._crit_edge208, %bb.f
  %i.cf = add nuw nsw i64 %.0187212, %spec.store.select7 ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.u
  br i1 %i.cg, label %bb.f, label %.lr.ph217, !llvm.loop !12

bb.j:                                             ; preds = %.lr.ph217, %bb.j
  %.1188216 = phi i64 [ 0, %.lr.ph217 ], [ %i.cj, %bb.j ] ; 3 uses
  %i.ch = sub nuw nsw i64 %i.u, %.1188216
  %i.ci = call i64 @llvm.smin.i64(i64 %i.ch, i64 %spec.store.select7) ; 2 uses
  %i.cj = add nuw nsw i64 %i.ci, %.1188216        ; 3 uses
  %i.ck = add i64 %i.ah, %i.cj
  %i.cl = mul nsw i64 %.1188216, %i.h
  %.neg = sub i64 %i.cl, %.0189
  %i.cm = getelementptr inbounds [8 x i8], ptr %.0, i64 %.neg
  %i.cn = call i32 @dlaswp_plus(i64 noundef %i.ci, i64 noundef %i.ck, i64 noundef %i.ai, double noundef 0.000000e+00, ptr noundef %i.cm, i64 noundef %i.h, ptr noundef null, i64 noundef 0, ptr noundef %i.j, i64 noundef 1) #4 ; 0 uses
  %i.co = icmp slt i64 %i.cj, %i.u
  br i1 %i.co, label %bb.j, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %bb.j, %bb.c, %bb.e
  %.0192 = phi i32 [ 0, %bb.c ], [ %i.z, %bb.e ], [ %.1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0192
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dgetf2_k(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dtrsm_iltucopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dlaswp_plus(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dgemm_oncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dtrsm_kernel_LT(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dgemm_itcopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dgemm_kernel(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

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
!8 = distinct !{!8, !23}
!9 = distinct !{!9, !23}
!10 = distinct !{!10, !23}
!11 = distinct !{!11, !23}
!12 = distinct !{!12, !23}
!13 = distinct !{!13, !23}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !14, i64 104, !15, i64 112, !14, i64 120, !5, i64 128}
!17 = !{!16, !15, i64 48}
!18 = !{!16, !15, i64 56}
!19 = !{!16, !14, i64 0}
!20 = !{!16, !15, i64 72}
!21 = !{!16, !14, i64 16}
!22 = !{!15, !15, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
end_hunk_0
