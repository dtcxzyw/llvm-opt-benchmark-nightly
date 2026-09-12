Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrmm_RNLN?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dtrmm_RNLN(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 8 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24   ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26
  %i.q = sub nsw i64 %i.p, %i.n
  %i.r = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0242 = phi ptr [ %i.r, %bb.b ], [ %i.g, %bb.a ] ; 8 uses
  %.0235 = phi i64 [ %i.q, %bb.b ], [ %i.b, %bb.a ] ; 7 uses
  %.not250 = icmp eq ptr %i.m, null
  br i1 %.not250, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load double, ptr %i.m, align 8, !tbaa !28 ; 2 uses
  %i.t = fcmp une double %i.s, 1.000000e+00
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 @dgemm_beta(i64 noundef %.0235, i64 noundef %i.d, i64 noundef 0, double noundef %i.s, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef %.0242, i64 noundef %i.k) #3 ; 0 uses
  %.pr = load double, ptr %i.m, align 8, !tbaa !28
  %i.v = fcmp une double %.pr, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i1 [ %i.v, %bb.e ], [ true, %bb.d ]
  %i.x = icmp sgt i64 %i.d, 0
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %.lr.ph274, label %.loopexit

bb.g:                                             ; preds = %bb.c
  %.old = icmp sgt i64 %i.d, 0
  br i1 %.old, label %.lr.ph274, label %.loopexit

.lr.ph274:                                        ; preds = %bb.f, %bb.g
  %spec.store.select8 = tail call i64 @llvm.smin.i64(i64 %.0235, i64 192) ; 7 uses
  %i.y = icmp sgt i64 %.0235, 192                 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph274, %._crit_edge271
  %.0237272 = phi i64 [ 0, %.lr.ph274 ], [ %i.cy, %._crit_edge271 ] ; 11 uses
  %i.z = sub nuw nsw i64 %i.d, %.0237272          ; 2 uses
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.z, i64 8640) ; 2 uses
  %i.aa = add nsw i64 %spec.store.select, %.0237272 ; 6 uses
  %i.ab = icmp sgt i64 %i.z, 0                    ; 2 uses
  br i1 %i.ab, label %.lr.ph262, label %.preheader253

.lr.ph262:                                        ; preds = %bb.h
  %i.ac = mul nsw i64 %.0237272, %i.k
  br label %bb.i

.preheader253:                                    ; preds = %._crit_edge, %bb.h
  %i.ad = icmp slt i64 %i.aa, %i.d
  br i1 %i.ad, label %.lr.ph270, label %._crit_edge271

.lr.ph270:                                        ; preds = %.preheader253
  %i.ae = mul nsw i64 %.0237272, %i.k
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph262, %._crit_edge
  %.0240260 = phi i64 [ %.0237272, %.lr.ph262 ], [ %i.bv, %._crit_edge ] ; 8 uses
  %i.af = sub nuw nsw i64 %i.aa, %.0240260        ; 2 uses
  %spec.store.select1 = tail call i64 @llvm.smin.i64(i64 %i.af, i64 384) ; 14 uses
  %i.ag = mul nsw i64 %.0240260, %i.k             ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.0242, i64 %i.ag
  %i.ai = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select8, ptr noundef %i.ah, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.aj = sub nuw nsw i64 %.0240260, %.0237272    ; 5 uses
  %.not275 = icmp eq i64 %.0240260, %.0237272
  br i1 %.not275, label %.preheader252, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ak = getelementptr [8 x i8], ptr %i.e, i64 %.0240260
  br label %bb.j

.preheader252:                                    ; preds = %bb.j, %bb.i
  %i.al = icmp sgt i64 %i.af, 0
  br i1 %i.al, label %.lr.ph257, label %.preheader251

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.0236255 = phi i64 [ 0, %.lr.ph ], [ %i.aw, %bb.j ] ; 4 uses
  %i.am = sub nsw i64 %i.aj, %.0236255
  %spec.store.select2 = tail call i64 @llvm.smin.i64(i64 %i.am, i64 12) ; 3 uses
  %i.an = add nuw nsw i64 %.0236255, %.0237272    ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.i
  %i.ap = getelementptr [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = mul nsw i64 %.0236255, %spec.store.select1
  %i.ar = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aq ; 2 uses
  %i.as = tail call i32 @dgemm_oncopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select2, ptr noundef %i.ap, i64 noundef %i.i, ptr noundef %i.ar) #3 ; 0 uses
  %i.at = mul nsw i64 %i.an, %i.k
  %i.au = getelementptr inbounds [8 x i8], ptr %.0242, i64 %i.at
  %i.av = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select8, i64 noundef %spec.store.select2, i64 noundef %spec.store.select1, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.ar, ptr noundef %i.au, i64 noundef %i.k) #3 ; 0 uses
  %i.aw = add nuw nsw i64 %spec.store.select2, %.0236255 ; 2 uses
  %i.ax = icmp slt i64 %i.aw, %i.aj
  br i1 %i.ax, label %bb.j, label %.preheader252, !llvm.loop !8

.preheader251:                                    ; preds = %.lr.ph257, %.preheader252
  br i1 %i.y, label %.lr.ph259, label %._crit_edge

.lr.ph259:                                        ; preds = %.preheader251
  %i.ay = mul nuw nsw i64 %spec.store.select1, %i.aj
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ay
  br label %bb.k

.lr.ph257:                                        ; preds = %.preheader252, %.lr.ph257
  %.1256 = phi i64 [ %i.bk, %.lr.ph257 ], [ 0, %.preheader252 ] ; 5 uses
  %i.ba = sub nsw i64 %spec.store.select1, %.1256
  %spec.store.select3 = tail call i64 @llvm.smin.i64(i64 %i.ba, i64 12) ; 3 uses
  %i.bb = add nuw nsw i64 %.1256, %.0240260       ; 2 uses
  %i.bc = add nsw i64 %.1256, %i.aj
  %i.bd = mul nsw i64 %i.bc, %spec.store.select1
  %i.be = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bd ; 2 uses
  %i.bf = tail call i32 @dtrmm_olnncopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select3, ptr noundef %i.e, i64 noundef %i.i, i64 noundef %.0240260, i64 noundef %i.bb, ptr noundef %i.be) #3 ; 0 uses
  %i.bg = mul nsw i64 %i.bb, %i.k
  %i.bh = getelementptr inbounds [8 x i8], ptr %.0242, i64 %i.bg
  %i.bi = sub nsw i64 0, %.1256
  %i.bj = tail call i32 @dtrmm_kernel_RT(i64 noundef %spec.store.select8, i64 noundef %spec.store.select3, i64 noundef %spec.store.select1, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.be, ptr noundef %i.bh, i64 noundef %i.k, i64 noundef %i.bi) #3 ; 0 uses
  %i.bk = add nuw nsw i64 %spec.store.select3, %.1256 ; 2 uses
  %i.bl = icmp slt i64 %i.bk, %spec.store.select1
  br i1 %i.bl, label %.lr.ph257, label %.preheader251, !llvm.loop !9

bb.k:                                             ; preds = %.lr.ph259, %bb.k
  %.0238258 = phi i64 [ %spec.store.select8, %.lr.ph259 ], [ %i.bt, %bb.k ] ; 3 uses
  %i.bm = sub nsw i64 %.0235, %.0238258
  %spec.store.select4 = tail call i64 @llvm.smin.i64(i64 %i.bm, i64 192) ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %.0242, i64 %.0238258 ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %i.ag ; 2 uses
  %i.bp = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select4, ptr noundef %i.bo, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bn, i64 %i.ac
  %i.br = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select4, i64 noundef %i.aj, i64 noundef %spec.store.select1, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %i.bq, i64 noundef %i.k) #3 ; 0 uses
  %i.bs = tail call i32 @dtrmm_kernel_RT(i64 noundef %spec.store.select4, i64 noundef %spec.store.select1, i64 noundef %spec.store.select1, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.az, ptr noundef %i.bo, i64 noundef %i.k, i64 noundef 0) #3 ; 0 uses
  %i.bt = add nuw nsw i64 %.0238258, 192          ; 2 uses
  %i.bu = icmp slt i64 %i.bt, %.0235
  br i1 %i.bu, label %bb.k, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.k, %.preheader251
  %i.bv = add nuw nsw i64 %.0240260, 384          ; 2 uses
  %i.bw = icmp slt i64 %i.bv, %i.aa
  br i1 %i.bw, label %bb.i, label %.preheader253, !llvm.loop !11

bb.l:                                             ; preds = %.lr.ph270, %._crit_edge268
  %.1241269 = phi i64 [ %i.aa, %.lr.ph270 ], [ %i.cw, %._crit_edge268 ] ; 4 uses
  %i.bx = sub nsw i64 %i.d, %.1241269
  %spec.store.select5 = tail call i64 @llvm.smin.i64(i64 %i.bx, i64 384) ; 6 uses
  %i.by = mul nsw i64 %.1241269, %i.k             ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %.0242, i64 %i.by
  %i.ca = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select5, i64 noundef %spec.store.select8, ptr noundef %i.bz, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  br i1 %i.ab, label %.lr.ph265, label %.preheader

.lr.ph265:                                        ; preds = %bb.l
  %i.cb = getelementptr [8 x i8], ptr %i.e, i64 %.1241269
  br label %bb.m

.preheader:                                       ; preds = %bb.m, %bb.l
  br i1 %i.y, label %.lr.ph267, label %._crit_edge268

bb.m:                                             ; preds = %.lr.ph265, %bb.m
  %.2263 = phi i64 [ %.0237272, %.lr.ph265 ], [ %i.cm, %bb.m ] ; 5 uses
  %i.cc = sub nsw i64 %i.aa, %.2263
  %spec.store.select6 = tail call i64 @llvm.smin.i64(i64 %i.cc, i64 12) ; 3 uses
  %i.cd = mul nsw i64 %.2263, %i.i
  %i.ce = getelementptr [8 x i8], ptr %i.cb, i64 %i.cd
  %i.cf = sub nsw i64 %.2263, %.0237272
  %i.cg = mul nsw i64 %i.cf, %spec.store.select5
  %i.ch = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cg ; 2 uses
  %i.ci = tail call i32 @dgemm_oncopy(i64 noundef %spec.store.select5, i64 noundef %spec.store.select6, ptr noundef %i.ce, i64 noundef %i.i, ptr noundef %i.ch) #3 ; 0 uses
  %i.cj = mul nsw i64 %.2263, %i.k
  %i.ck = getelementptr inbounds [8 x i8], ptr %.0242, i64 %i.cj
  %i.cl = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select8, i64 noundef %spec.store.select6, i64 noundef %spec.store.select5, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.ch, ptr noundef %i.ck, i64 noundef %i.k) #3 ; 0 uses
  %i.cm = add nuw nsw i64 %spec.store.select6, %.2263 ; 2 uses
  %i.cn = icmp slt i64 %i.cm, %i.aa
  br i1 %i.cn, label %bb.m, label %.preheader, !llvm.loop !12

.lr.ph267:                                        ; preds = %.preheader, %.lr.ph267
  %.1239266 = phi i64 [ %i.cu, %.lr.ph267 ], [ %spec.store.select8, %.preheader ] ; 3 uses
  %i.co = sub nsw i64 %.0235, %.1239266
  %spec.store.select7 = tail call i64 @llvm.smin.i64(i64 %i.co, i64 192) ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %.0242, i64 %.1239266 ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.by
  %i.cr = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select5, i64 noundef %spec.store.select7, ptr noundef %i.cq, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.cs = getelementptr [8 x i8], ptr %i.cp, i64 %i.ae
  %i.ct = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select7, i64 noundef %spec.store.select, i64 noundef %spec.store.select5, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %i.cs, i64 noundef %i.k) #3 ; 0 uses
  %i.cu = add nuw nsw i64 %.1239266, 192          ; 2 uses
  %i.cv = icmp slt i64 %i.cu, %.0235
  br i1 %i.cv, label %.lr.ph267, label %._crit_edge268, !llvm.loop !13

._crit_edge268:                                   ; preds = %.lr.ph267, %.preheader
  %i.cw = add nsw i64 %.1241269, 384              ; 2 uses
  %i.cx = icmp slt i64 %i.cw, %i.d
  br i1 %i.cx, label %bb.l, label %._crit_edge271, !llvm.loop !14

._crit_edge271:                                   ; preds = %._crit_edge268, %.preheader253
  %i.cy = add nuw nsw i64 %.0237272, 8640         ; 2 uses
  %i.cz = icmp slt i64 %i.cy, %i.d
  br i1 %i.cz, label %bb.h, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %._crit_edge271, %bb.g, %bb.f
  ret i32 0
}

declare i32 @dgemm_beta(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dgemm_itcopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dgemm_oncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dgemm_kernel(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dtrmm_olnncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dtrmm_kernel_RT(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!8 = distinct !{!8, !29}
!9 = distinct !{!9, !29}
!10 = distinct !{!10, !29}
!11 = distinct !{!11, !29}
!12 = distinct !{!12, !29}
!13 = distinct !{!13, !29}
!14 = distinct !{!14, !29}
!15 = distinct !{!15, !29}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!"long", !4, i64 0}
!18 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !16, i64 104, !17, i64 112, !16, i64 120, !5, i64 128}
!19 = !{!18, !17, i64 48}
!20 = !{!18, !17, i64 56}
!21 = !{!18, !16, i64 0}
!22 = !{!18, !16, i64 8}
!23 = !{!18, !17, i64 72}
!24 = !{!18, !17, i64 80}
!25 = !{!18, !16, i64 40}
!26 = !{!17, !17, i64 0}
!27 = !{!"double", !4, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
end_hunk_0
