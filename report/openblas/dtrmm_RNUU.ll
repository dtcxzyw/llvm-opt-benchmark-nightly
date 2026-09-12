Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrmm_RNUU?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dtrmm_RNUU(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 6 uses
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
  %.0255 = phi ptr [ %i.r, %bb.b ], [ %i.g, %bb.a ] ; 8 uses
  %.0247 = phi i64 [ %i.q, %bb.b ], [ %i.b, %bb.a ] ; 7 uses
  %.not263 = icmp eq ptr %i.m, null
  br i1 %.not263, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load double, ptr %i.m, align 8, !tbaa !28 ; 2 uses
  %i.t = fcmp une double %i.s, 1.000000e+00
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 @dgemm_beta(i64 noundef %.0247, i64 noundef %i.d, i64 noundef 0, double noundef %i.s, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef %.0255, i64 noundef %i.k) #3 ; 0 uses
  %.pr = load double, ptr %i.m, align 8, !tbaa !28
  %i.v = fcmp une double %.pr, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i1 [ %i.v, %bb.e ], [ true, %bb.d ]
  %i.x = icmp sgt i64 %i.d, 0
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %.lr.ph286, label %.loopexit

bb.g:                                             ; preds = %bb.c
  %.old = icmp sgt i64 %i.d, 0
  br i1 %.old, label %.lr.ph286, label %.loopexit

.lr.ph286:                                        ; preds = %bb.f, %bb.g
  %spec.store.select8 = tail call i64 @llvm.smin.i64(i64 %.0247, i64 192) ; 7 uses
  %i.y = icmp sgt i64 %.0247, 192                 ; 2 uses
  %i.z = add nuw i64 %i.d, 384
  %i.aa = sub nuw i64 -384, %i.d
  br label %.preheader268

.preheader268:                                    ; preds = %.lr.ph286, %._crit_edge283
  %indvars.iv287 = phi i64 [ %i.aa, %.lr.ph286 ], [ %indvars.iv.next288, %._crit_edge283 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.z, %.lr.ph286 ], [ %indvars.iv.next, %._crit_edge283 ] ; 2 uses
  %.0250284 = phi i64 [ %i.d, %.lr.ph286 ], [ %i.dn, %._crit_edge283 ] ; 10 uses
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0250284, i64 8640) ; 7 uses
  %i.ac = sub nuw nsw i64 %.0250284, %i.ab        ; 6 uses
  %i.ad = sub i64 %indvars.iv, %i.ab
  %smax = tail call i64 @llvm.smax.i64(i64 %.0250284, i64 %i.ad)
  %i.ae = add nuw i64 %i.ab, %smax
  %i.af = add i64 %i.ae, %indvars.iv287           ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0
  %umin289 = zext i1 %i.ag to i64                 ; 2 uses
  %i.ah = sub i64 %i.af, %umin289
  %i.ai = udiv i64 %i.ah, 384
  %i.aj = add nuw nsw i64 %i.ai, %umin289
  %i.ak = mul i64 %i.aj, 384
  %i.al = add i64 %.0250284, %i.ak
  %i.am = sub i64 %i.al, %i.ab                    ; 2 uses
  %.not264274 = icmp slt i64 %i.am, %i.ac
  br i1 %.not264274, label %.preheader267, label %.lr.ph276

.preheader267:                                    ; preds = %._crit_edge, %.preheader268
  %i.an = icmp sgt i64 %i.ac, 0
  br i1 %i.an, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %.preheader267
  %i.ao = add nuw nsw i64 %i.ab, %.0250284        ; 2 uses
  %i.ap = mul nsw i64 %i.ac, %i.k
  br label %bb.l

.lr.ph276:                                        ; preds = %.preheader268, %._crit_edge
  %.0253275 = phi i64 [ %i.ck, %._crit_edge ], [ %i.am, %.preheader268 ] ; 8 uses
  %i.aq = sub nsw i64 %.0250284, %.0253275        ; 3 uses
  %spec.store.select1 = tail call i64 @llvm.smin.i64(i64 %i.aq, i64 384) ; 19 uses
  %i.ar = mul nsw i64 %.0253275, %i.k             ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.0255, i64 %i.ar
  %i.at = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select8, ptr noundef %i.as, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.au = icmp sgt i64 %i.aq, 0
  br i1 %i.au, label %.lr.ph, label %.preheader266

.preheader266:                                    ; preds = %.lr.ph, %.lr.ph276
  %i.av = sub nsw i64 %i.aq, %spec.store.select1  ; 4 uses
  %i.aw = icmp sgt i64 %i.av, 0                   ; 2 uses
  br i1 %i.aw, label %.lr.ph271, label %.preheader265

.lr.ph271:                                        ; preds = %.preheader266
  %i.ax = add nsw i64 %spec.store.select1, %.0253275
  %i.ay = getelementptr [8 x i8], ptr %i.e, i64 %.0253275
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph276, %.lr.ph
  %.0249269 = phi i64 [ %i.bi, %.lr.ph ], [ 0, %.lr.ph276 ] ; 5 uses
  %i.az = sub nuw nsw i64 %spec.store.select1, %.0249269
  %spec.store.select2 = tail call i64 @llvm.smin.i64(i64 %i.az, i64 12) ; 3 uses
  %i.ba = add nuw nsw i64 %.0249269, %.0253275    ; 2 uses
  %i.bb = mul nuw nsw i64 %.0249269, %spec.store.select1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bb ; 2 uses
  %i.bd = tail call i32 @dtrmm_ounucopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select2, ptr noundef %i.e, i64 noundef %i.i, i64 noundef %.0253275, i64 noundef %i.ba, ptr noundef %i.bc) #3 ; 0 uses
  %i.be = mul nsw i64 %i.ba, %i.k
  %i.bf = getelementptr inbounds [8 x i8], ptr %.0255, i64 %i.be
  %i.bg = sub nsw i64 0, %.0249269
  %i.bh = tail call i32 @dtrmm_kernel_RN(i64 noundef %spec.store.select8, i64 noundef %spec.store.select2, i64 noundef %spec.store.select1, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.bc, ptr noundef %i.bf, i64 noundef %i.k, i64 noundef %i.bg) #3 ; 0 uses
  %i.bi = add nuw nsw i64 %spec.store.select2, %.0249269 ; 2 uses
  %i.bj = icmp slt i64 %i.bi, %spec.store.select1
  br i1 %i.bj, label %.lr.ph, label %.preheader266, !llvm.loop !8

.preheader265:                                    ; preds = %bb.h, %.preheader266
  br i1 %i.y, label %.lr.ph273, label %._crit_edge

.lr.ph273:                                        ; preds = %.preheader265
  %i.bk = mul nsw i64 %spec.store.select1, %spec.store.select1
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bk
  %i.bm = add nsw i64 %spec.store.select1, %.0253275
  %i.bn = mul nsw i64 %i.bm, %i.k
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph271, %bb.h
  %.1270 = phi i64 [ 0, %.lr.ph271 ], [ %i.bz, %bb.h ] ; 4 uses
  %i.bo = sub nuw nsw i64 %i.av, %.1270
  %spec.store.select3 = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 12) ; 3 uses
  %i.bp = add nsw i64 %i.ax, %.1270               ; 2 uses
  %i.bq = mul nsw i64 %i.bp, %i.i
  %i.br = getelementptr [8 x i8], ptr %i.ay, i64 %i.bq
  %i.bs = add nsw i64 %.1270, %spec.store.select1
  %i.bt = mul nsw i64 %i.bs, %spec.store.select1
  %i.bu = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bt ; 2 uses
  %i.bv = tail call i32 @dgemm_oncopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select3, ptr noundef %i.br, i64 noundef %i.i, ptr noundef %i.bu) #3 ; 0 uses
  %i.bw = mul nsw i64 %i.bp, %i.k
  %i.bx = getelementptr inbounds [8 x i8], ptr %.0255, i64 %i.bw
  %i.by = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select8, i64 noundef %spec.store.select3, i64 noundef %spec.store.select1, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.bu, ptr noundef %i.bx, i64 noundef %i.k) #3 ; 0 uses
  %i.bz = add nuw nsw i64 %spec.store.select3, %.1270 ; 2 uses
  %i.ca = icmp slt i64 %i.bz, %i.av
  br i1 %i.ca, label %bb.h, label %.preheader265, !llvm.loop !9

bb.i:                                             ; preds = %.lr.ph273, %bb.k
  %.0251272 = phi i64 [ %spec.store.select8, %.lr.ph273 ], [ %i.ci, %bb.k ] ; 3 uses
  %i.cb = sub nsw i64 %.0247, %.0251272
  %spec.store.select4 = tail call i64 @llvm.smin.i64(i64 %i.cb, i64 192) ; 3 uses
  %i.cc = getelementptr [8 x i8], ptr %.0255, i64 %.0251272 ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %i.ar ; 2 uses
  %i.ce = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select4, ptr noundef %i.cd, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.cf = tail call i32 @dtrmm_kernel_RN(i64 noundef %spec.store.select4, i64 noundef %spec.store.select1, i64 noundef %spec.store.select1, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %i.cd, i64 noundef %i.k, i64 noundef 0) #3 ; 0 uses
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr [8 x i8], ptr %i.cc, i64 %i.bn
  %i.ch = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select4, i64 noundef %i.av, i64 noundef %spec.store.select1, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.bl, ptr noundef %i.cg, i64 noundef %i.k) #3 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ci = add nuw nsw i64 %.0251272, 192          ; 2 uses
  %i.cj = icmp slt i64 %i.ci, %.0247
  br i1 %i.cj, label %bb.i, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.k, %.preheader265
  %i.ck = add nsw i64 %.0253275, -384             ; 2 uses
  %.not264 = icmp slt i64 %i.ck, %i.ac
  br i1 %.not264, label %.preheader267, label %.lr.ph276, !llvm.loop !11

bb.l:                                             ; preds = %.lr.ph282, %._crit_edge280
  %.1254281 = phi i64 [ 0, %.lr.ph282 ], [ %i.dl, %._crit_edge280 ] ; 4 uses
  %i.cl = sub nuw nsw i64 %i.ac, %.1254281
  %spec.store.select5 = tail call i64 @llvm.smin.i64(i64 %i.cl, i64 384) ; 6 uses
  %i.cm = mul nsw i64 %.1254281, %i.k             ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.0255, i64 %i.cm
  %i.co = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select5, i64 noundef %spec.store.select8, ptr noundef %i.cn, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.cp = getelementptr [8 x i8], ptr %i.e, i64 %.1254281
  br label %bb.m

.preheader:                                       ; preds = %bb.m
  br i1 %i.y, label %.lr.ph279, label %._crit_edge280

bb.m:                                             ; preds = %bb.l, %bb.m
  %.2277 = phi i64 [ %.0250284, %bb.l ], [ %i.db, %bb.m ] ; 4 uses
  %i.cq = sub nsw i64 %i.ao, %.2277
  %spec.store.select6 = tail call i64 @llvm.smin.i64(i64 %i.cq, i64 12) ; 3 uses
  %i.cr = sub nsw i64 %.2277, %i.ab               ; 2 uses
  %i.cs = mul nsw i64 %i.cr, %i.i
  %i.ct = getelementptr [8 x i8], ptr %i.cp, i64 %i.cs
  %i.cu = sub nsw i64 %.2277, %.0250284
  %i.cv = mul nsw i64 %i.cu, %spec.store.select5
  %i.cw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cv ; 2 uses
  %i.cx = tail call i32 @dgemm_oncopy(i64 noundef %spec.store.select5, i64 noundef %spec.store.select6, ptr noundef %i.ct, i64 noundef %i.i, ptr noundef %i.cw) #3 ; 0 uses
  %i.cy = mul nsw i64 %i.cr, %i.k
  %i.cz = getelementptr inbounds [8 x i8], ptr %.0255, i64 %i.cy
  %i.da = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select8, i64 noundef %spec.store.select6, i64 noundef %spec.store.select5, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.cw, ptr noundef %i.cz, i64 noundef %i.k) #3 ; 0 uses
  %i.db = add nuw nsw i64 %spec.store.select6, %.2277 ; 2 uses
  %i.dc = icmp slt i64 %i.db, %i.ao
  br i1 %i.dc, label %bb.m, label %.preheader, !llvm.loop !12

.lr.ph279:                                        ; preds = %.preheader, %.lr.ph279
  %.1252278 = phi i64 [ %i.dj, %.lr.ph279 ], [ %spec.store.select8, %.preheader ] ; 3 uses
  %i.dd = sub nsw i64 %.0247, %.1252278
  %spec.store.select7 = tail call i64 @llvm.smin.i64(i64 %i.dd, i64 192) ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %.0255, i64 %.1252278 ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.cm
  %i.dg = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select5, i64 noundef %spec.store.select7, ptr noundef %i.df, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.dh = getelementptr [8 x i8], ptr %i.de, i64 %i.ap
  %i.di = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select7, i64 noundef %i.ab, i64 noundef %spec.store.select5, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %i.dh, i64 noundef %i.k) #3 ; 0 uses
  %i.dj = add nuw nsw i64 %.1252278, 192          ; 2 uses
  %i.dk = icmp slt i64 %i.dj, %.0247
  br i1 %i.dk, label %.lr.ph279, label %._crit_edge280, !llvm.loop !13

._crit_edge280:                                   ; preds = %.lr.ph279, %.preheader
  %i.dl = add nuw nsw i64 %.1254281, 384          ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.ac
  br i1 %i.dm, label %bb.l, label %._crit_edge283, !llvm.loop !14

._crit_edge283:                                   ; preds = %._crit_edge280, %.preheader267
  %i.dn = add nsw i64 %.0250284, -8640
  %i.do = icmp sgt i64 %.0250284, 8640
  %indvars.iv.next = add i64 %indvars.iv, -8640
  %indvars.iv.next288 = add i64 %indvars.iv287, 8640
  br i1 %i.do, label %.preheader268, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %._crit_edge283, %bb.g, %bb.f
  ret i32 0
}

declare i32 @dgemm_beta(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dgemm_itcopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dtrmm_ounucopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dtrmm_kernel_RN(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dgemm_oncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dgemm_kernel(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

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
