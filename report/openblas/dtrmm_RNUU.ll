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
  %.0250284 = phi i64 [ %i.d, %.lr.ph286 ], [ %i.do, %._crit_edge283 ] ; 10 uses
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
  %.0253275 = phi i64 [ %i.cl, %._crit_edge ], [ %i.am, %.preheader268 ] ; 8 uses
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
  %.1270 = phi i64 [ 0, %.lr.ph271 ], [ %i.ca, %bb.h ] ; 4 uses
  %i.bo = sub nuw nsw i64 %i.av, %.1270
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 12) ; 3 uses
  %i.bq = add nsw i64 %i.ax, %.1270               ; 2 uses
  %i.br = mul nsw i64 %i.bq, %i.i
  %i.bs = getelementptr [8 x i8], ptr %i.ay, i64 %i.br
  %i.bt = add nsw i64 %.1270, %spec.store.select1
  %i.bu = mul nsw i64 %i.bt, %spec.store.select1
  %i.bv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bu ; 2 uses
  %i.bw = tail call i32 @dgemm_oncopy(i64 noundef %spec.store.select1, i64 noundef %i.bp, ptr noundef %i.bs, i64 noundef %i.i, ptr noundef %i.bv) #3 ; 0 uses
  %i.bx = mul nsw i64 %i.bq, %i.k
  %i.by = getelementptr inbounds [8 x i8], ptr %.0255, i64 %i.bx
  %i.bz = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select8, i64 noundef %i.bp, i64 noundef %spec.store.select1, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.bv, ptr noundef %i.by, i64 noundef %i.k) #3 ; 0 uses
  %i.ca = add nuw nsw i64 %i.bp, %.1270           ; 2 uses
  %i.cb = icmp slt i64 %i.ca, %i.av
  br i1 %i.cb, label %bb.h, label %.preheader265, !llvm.loop !9

bb.i:                                             ; preds = %.lr.ph273, %bb.k
  %.0251272 = phi i64 [ %spec.store.select8, %.lr.ph273 ], [ %i.cj, %bb.k ] ; 3 uses
  %i.cc = sub nsw i64 %.0247, %.0251272
  %spec.store.select4 = tail call i64 @llvm.smin.i64(i64 %i.cc, i64 192) ; 3 uses
  %i.cd = getelementptr [8 x i8], ptr %.0255, i64 %.0251272 ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.ar ; 2 uses
  %i.cf = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select4, ptr noundef %i.ce, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.cg = tail call i32 @dtrmm_kernel_RN(i64 noundef %spec.store.select4, i64 noundef %spec.store.select1, i64 noundef %spec.store.select1, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %i.ce, i64 noundef %i.k, i64 noundef 0) #3 ; 0 uses
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ch = getelementptr [8 x i8], ptr %i.cd, i64 %i.bn
  %i.ci = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select4, i64 noundef %i.av, i64 noundef %spec.store.select1, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.bl, ptr noundef %i.ch, i64 noundef %i.k) #3 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.cj = add nuw nsw i64 %.0251272, 192          ; 2 uses
  %i.ck = icmp slt i64 %i.cj, %.0247
  br i1 %i.ck, label %bb.i, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.k, %.preheader265
  %i.cl = add nsw i64 %.0253275, -384             ; 2 uses
  %.not264 = icmp slt i64 %i.cl, %i.ac
  br i1 %.not264, label %.preheader267, label %.lr.ph276, !llvm.loop !11

bb.l:                                             ; preds = %.lr.ph282, %._crit_edge280
  %.1254281 = phi i64 [ 0, %.lr.ph282 ], [ %i.dm, %._crit_edge280 ] ; 4 uses
  %i.cm = sub nuw nsw i64 %i.ac, %.1254281
  %spec.store.select5 = tail call i64 @llvm.smin.i64(i64 %i.cm, i64 384) ; 6 uses
  %i.cn = mul nsw i64 %.1254281, %i.k             ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.0255, i64 %i.cn
  %i.cp = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select5, i64 noundef %spec.store.select8, ptr noundef %i.co, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.cq = getelementptr [8 x i8], ptr %i.e, i64 %.1254281
  br label %bb.m

.preheader:                                       ; preds = %bb.m
  br i1 %i.y, label %.lr.ph279, label %._crit_edge280

bb.m:                                             ; preds = %bb.l, %bb.m
  %.2277 = phi i64 [ %.0250284, %bb.l ], [ %i.dc, %bb.m ] ; 4 uses
  %i.cr = sub nsw i64 %i.ao, %.2277
  %spec.store.select6 = tail call i64 @llvm.smin.i64(i64 %i.cr, i64 12) ; 3 uses
  %i.cs = sub nsw i64 %.2277, %i.ab               ; 2 uses
  %i.ct = mul nsw i64 %i.cs, %i.i
  %i.cu = getelementptr [8 x i8], ptr %i.cq, i64 %i.ct
  %i.cv = sub nsw i64 %.2277, %.0250284
  %i.cw = mul nsw i64 %i.cv, %spec.store.select5
  %i.cx = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cw ; 2 uses
  %i.cy = tail call i32 @dgemm_oncopy(i64 noundef %spec.store.select5, i64 noundef %spec.store.select6, ptr noundef %i.cu, i64 noundef %i.i, ptr noundef %i.cx) #3 ; 0 uses
  %i.cz = mul nsw i64 %i.cs, %i.k
  %i.da = getelementptr inbounds [8 x i8], ptr %.0255, i64 %i.cz
  %i.db = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select8, i64 noundef %spec.store.select6, i64 noundef %spec.store.select5, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.cx, ptr noundef %i.da, i64 noundef %i.k) #3 ; 0 uses
  %i.dc = add nuw nsw i64 %spec.store.select6, %.2277 ; 2 uses
  %i.dd = icmp slt i64 %i.dc, %i.ao
  br i1 %i.dd, label %bb.m, label %.preheader, !llvm.loop !12

.lr.ph279:                                        ; preds = %.preheader, %.lr.ph279
  %.1252278 = phi i64 [ %i.dk, %.lr.ph279 ], [ %spec.store.select8, %.preheader ] ; 3 uses
  %i.de = sub nsw i64 %.0247, %.1252278
  %spec.store.select7 = tail call i64 @llvm.smin.i64(i64 %i.de, i64 192) ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %.0255, i64 %.1252278 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.cn
  %i.dh = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select5, i64 noundef %spec.store.select7, ptr noundef %i.dg, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.di = getelementptr [8 x i8], ptr %i.df, i64 %i.ap
  %i.dj = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select7, i64 noundef %i.ab, i64 noundef %spec.store.select5, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %i.di, i64 noundef %i.k) #3 ; 0 uses
  %i.dk = add nuw nsw i64 %.1252278, 192          ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %.0247
  br i1 %i.dl, label %.lr.ph279, label %._crit_edge280, !llvm.loop !13

._crit_edge280:                                   ; preds = %.lr.ph279, %.preheader
  %i.dm = add nuw nsw i64 %.1254281, 384          ; 2 uses
  %i.dn = icmp slt i64 %i.dm, %i.ac
  br i1 %i.dn, label %bb.l, label %._crit_edge283, !llvm.loop !14

._crit_edge283:                                   ; preds = %._crit_edge280, %.preheader267
  %i.do = add nsw i64 %.0250284, -8640
  %i.dp = icmp sgt i64 %.0250284, 8640
  %indvars.iv.next = add i64 %indvars.iv, -8640
  %indvars.iv.next288 = add i64 %indvars.iv287, 8640
  br i1 %i.dp, label %.preheader268, label %.loopexit, !llvm.loop !15

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
end_hunk_0
