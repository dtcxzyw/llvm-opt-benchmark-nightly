begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dtrsm_RNLN(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 9 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16   ; 17 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17   ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18
  %i.q = sub nsw i64 %i.p, %i.n
  %i.r = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0249 = phi ptr [ %i.r, %bb.b ], [ %i.g, %bb.a ] ; 7 uses
  %.0239 = phi i64 [ %i.q, %bb.b ], [ %i.b, %bb.a ] ; 7 uses
  %.not260 = icmp eq ptr %i.m, null
  br i1 %.not260, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load double, ptr %i.m, align 8, !tbaa !19 ; 2 uses
  %i.t = fcmp une double %i.s, 1.000000e+00
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 @dgemm_beta(i64 noundef %.0239, i64 noundef %i.d, i64 noundef 0, double noundef %i.s, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef %.0249, i64 noundef %i.k) #3 ; 0 uses
  %.pr = load double, ptr %i.m, align 8, !tbaa !19
  %i.v = fcmp une double %.pr, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i1 [ %i.v, %bb.e ], [ true, %bb.d ]
  %i.x = icmp sgt i64 %i.d, 0
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %.lr.ph283, label %.loopexit

bb.g:                                             ; preds = %bb.c
  %.old = icmp sgt i64 %i.d, 0
  br i1 %.old, label %.lr.ph283, label %.loopexit

.lr.ph283:                                        ; preds = %bb.f, %bb.g
  %spec.store.select7 = tail call i64 @llvm.smin.i64(i64 %.0239, i64 192) ; 7 uses
  %i.y = icmp sgt i64 %.0239, 192                 ; 2 uses
  %i.z = add i64 %i.i, 1
  %i.aa = add nuw i64 %i.d, 384
  %i.ab = sub nuw i64 -384, %i.d
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph283, %._crit_edge280
  %indvars.iv284 = phi i64 [ %i.ab, %.lr.ph283 ], [ %indvars.iv.next285, %._crit_edge280 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph283 ], [ %indvars.iv.next, %._crit_edge280 ] ; 2 uses
  %.0244281 = phi i64 [ %i.d, %.lr.ph283 ], [ %i.dd, %._crit_edge280 ] ; 14 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %.0244281, i64 8640) ; 9 uses
  %i.ac = sub i64 %indvars.iv, %umin
  %smax = tail call i64 @llvm.smax.i64(i64 %.0244281, i64 %i.ac)
  %i.ad = add nuw i64 %umin, %smax
  %i.ae = add i64 %i.ad, %indvars.iv284           ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  %umin286 = zext i1 %i.af to i64                 ; 2 uses
  %i.ag = sub i64 %i.ae, %umin286
  %i.ah = udiv i64 %i.ag, 384
  %i.ai = add nuw nsw i64 %i.ah, %umin286
  %i.aj = mul nuw i64 %i.ai, 384
  %i.ak = add i64 %.0244281, %i.aj
  %i.al = sub i64 %i.ak, %umin                    ; 2 uses
  %i.am = icmp slt i64 %.0244281, %i.d
  br i1 %i.am, label %.lr.ph269, label %.._crit_edge270_crit_edge

.._crit_edge270_crit_edge:                        ; preds = %bb.h
  %.pre = sub nsw i64 %.0244281, %umin
  br label %._crit_edge270

.lr.ph269:                                        ; preds = %bb.h
  %i.an = add nuw nsw i64 %umin, %.0244281        ; 2 uses
  %i.ao = sub nsw i64 %.0244281, %umin            ; 2 uses
  %i.ap = mul nsw i64 %i.ao, %i.k
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph269, %._crit_edge
  %.0247267 = phi i64 [ %.0244281, %.lr.ph269 ], [ %i.bq, %._crit_edge ] ; 4 uses
  %i.aq = sub nsw i64 %i.d, %.0247267
  %spec.store.select1 = tail call i64 @llvm.smin.i64(i64 %i.aq, i64 384) ; 6 uses
  %i.ar = mul nsw i64 %.0247267, %i.k             ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ar
  %i.at = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select7, ptr noundef %i.as, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.au = getelementptr [8 x i8], ptr %i.e, i64 %.0247267
  br label %bb.j

.preheader263:                                    ; preds = %bb.j
  br i1 %i.y, label %.lr.ph, label %._crit_edge

bb.j:                                             ; preds = %bb.i, %bb.j
  %.0242265 = phi i64 [ %.0244281, %bb.i ], [ %i.bg, %bb.j ] ; 4 uses
  %i.av = sub nsw i64 %i.an, %.0242265            ; 2 uses
  %spec.store.select2 = tail call i64 @llvm.smin.i64(i64 %i.av, i64 2)
  %.inv262 = icmp slt i64 %i.av, 6
  %.0241 = select i1 %.inv262, i64 %spec.store.select2, i64 6 ; 3 uses
  %i.aw = sub nsw i64 %.0242265, %umin            ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.i
  %i.ay = getelementptr [8 x i8], ptr %i.au, i64 %i.ax
  %i.az = sub nsw i64 %.0242265, %.0244281
  %i.ba = mul nsw i64 %i.az, %spec.store.select1
  %i.bb = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ba ; 2 uses
  %i.bc = tail call i32 @dgemm_oncopy(i64 noundef %spec.store.select1, i64 noundef %.0241, ptr noundef %i.ay, i64 noundef %i.i, ptr noundef %i.bb) #3 ; 0 uses
  %i.bd = mul nsw i64 %i.aw, %i.k
  %i.be = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.bd
  %i.bf = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select7, i64 noundef %.0241, i64 noundef %spec.store.select1, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %i.bb, ptr noundef %i.be, i64 noundef %i.k) #3 ; 0 uses
  %i.bg = add nuw nsw i64 %.0241, %.0242265       ; 2 uses
  %i.bh = icmp slt i64 %i.bg, %i.an
  br i1 %i.bh, label %bb.j, label %.preheader263, !llvm.loop !21

.lr.ph:                                           ; preds = %.preheader263, %.lr.ph
  %.0245266 = phi i64 [ %i.bo, %.lr.ph ], [ %spec.store.select7, %.preheader263 ] ; 3 uses
  %i.bi = sub nsw i64 %.0239, %.0245266
  %spec.store.select3 = tail call i64 @llvm.smin.i64(i64 %i.bi, i64 192) ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %.0249, i64 %.0245266 ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.ar
  %i.bl = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select3, ptr noundef %i.bk, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bj, i64 %i.ap
  %i.bn = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select3, i64 noundef %umin, i64 noundef %spec.store.select1, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %i.bm, i64 noundef %i.k) #3 ; 0 uses
  %i.bo = add nuw nsw i64 %.0245266, 192          ; 2 uses
  %i.bp = icmp slt i64 %i.bo, %.0239
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %.preheader263
  %i.bq = add nuw nsw i64 %.0247267, 384          ; 2 uses
  %i.br = icmp slt i64 %i.bq, %i.d
  br i1 %i.br, label %bb.i, label %._crit_edge270, !llvm.loop !24

._crit_edge270:                                   ; preds = %._crit_edge, %.._crit_edge270_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge270_crit_edge ], [ %i.ao, %._crit_edge ] ; 4 uses
  %.not261277 = icmp slt i64 %i.al, %.pre-phi
  br i1 %.not261277, label %._crit_edge280, label %.lr.ph279

.lr.ph279:                                        ; preds = %._crit_edge270
  %i.bs = sub nsw i64 %umin, %.0244281
  %i.bt = mul nsw i64 %.pre-phi, %i.k
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph279, %._crit_edge276
  %.1248278 = phi i64 [ %i.al, %.lr.ph279 ], [ %i.dc, %._crit_edge276 ] ; 6 uses
  %i.bu = sub nsw i64 %.0244281, %.1248278
  %spec.store.select4 = tail call i64 @llvm.smin.i64(i64 %i.bu, i64 384) ; 13 uses
  %i.bv = mul nsw i64 %.1248278, %i.k             ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.bv ; 2 uses
  %i.bx = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select4, i64 noundef %spec.store.select7, ptr noundef %i.bw, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.by = mul i64 %.1248278, %i.z
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.by
  %i.ca = add nsw i64 %.1248278, %i.bs            ; 5 uses
  %i.cb = mul nsw i64 %spec.store.select4, %i.ca
  %i.cc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cb ; 3 uses
  %i.cd = tail call i32 @dtrsm_olnncopy(i64 noundef %spec.store.select4, i64 noundef %spec.store.select4, ptr noundef %i.bz, i64 noundef %i.i, i64 noundef 0, ptr noundef %i.cc) #3 ; 0 uses
  %i.ce = tail call i32 @dtrsm_kernel_RT(i64 noundef %spec.store.select7, i64 noundef %spec.store.select4, i64 noundef %spec.store.select4, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %i.cc, ptr noundef %i.bw, i64 noundef %i.k, i64 noundef 0) #3 ; 0 uses
  %i.cf = icmp sgt i64 %i.ca, 0
  br i1 %i.cf, label %.lr.ph273, label %.preheader

.lr.ph273:                                        ; preds = %bb.k
  %i.cg = getelementptr [8 x i8], ptr %i.e, i64 %.1248278
  br label %bb.l

.preheader:                                       ; preds = %bb.l, %bb.k
  br i1 %i.y, label %.lr.ph275, label %._crit_edge276

bb.l:                                             ; preds = %.lr.ph273, %bb.l
  %.1243271 = phi i64 [ 0, %.lr.ph273 ], [ %i.cr, %bb.l ] ; 4 uses
  %i.ch = sub nsw i64 %i.ca, %.1243271            ; 2 uses
  %spec.store.select5 = tail call i64 @llvm.smin.i64(i64 %i.ch, i64 2)
  %.inv = icmp slt i64 %i.ch, 6
  %.1 = select i1 %.inv, i64 %spec.store.select5, i64 6 ; 3 uses
  %i.ci = add nsw i64 %.1243271, %.pre-phi        ; 2 uses
  %i.cj = mul nsw i64 %i.ci, %i.i
  %i.ck = getelementptr [8 x i8], ptr %i.cg, i64 %i.cj
  %i.cl = mul nsw i64 %.1243271, %spec.store.select4
  %i.cm = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cl ; 2 uses
  %i.cn = tail call i32 @dgemm_oncopy(i64 noundef %spec.store.select4, i64 noundef %.1, ptr noundef %i.ck, i64 noundef %i.i, ptr noundef %i.cm) #3 ; 0 uses
  %i.co = mul nsw i64 %i.ci, %i.k
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.co
  %i.cq = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select7, i64 noundef %.1, i64 noundef %spec.store.select4, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %i.cm, ptr noundef %i.cp, i64 noundef %i.k) #3 ; 0 uses
  %i.cr = add nuw nsw i64 %.1, %.1243271          ; 2 uses
  %i.cs = icmp slt i64 %i.cr, %i.ca
  br i1 %i.cs, label %bb.l, label %.preheader, !llvm.loop !25

.lr.ph275:                                        ; preds = %.preheader, %.lr.ph275
  %.1246274 = phi i64 [ %i.da, %.lr.ph275 ], [ %spec.store.select7, %.preheader ] ; 3 uses
  %i.ct = sub nsw i64 %.0239, %.1246274
  %spec.store.select6 = tail call i64 @llvm.smin.i64(i64 %i.ct, i64 192) ; 3 uses
  %i.cu = getelementptr [8 x i8], ptr %.0249, i64 %.1246274 ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %i.cu, i64 %i.bv ; 2 uses
  %i.cw = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select4, i64 noundef %spec.store.select6, ptr noundef %i.cv, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.cx = tail call i32 @dtrsm_kernel_RT(i64 noundef %spec.store.select6, i64 noundef %spec.store.select4, i64 noundef %spec.store.select4, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %i.cc, ptr noundef %i.cv, i64 noundef %i.k, i64 noundef 0) #3 ; 0 uses
  %i.cy = getelementptr [8 x i8], ptr %i.cu, i64 %i.bt
  %i.cz = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select6, i64 noundef %i.ca, i64 noundef %spec.store.select4, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %i.cy, i64 noundef %i.k) #3 ; 0 uses
  %i.da = add nuw nsw i64 %.1246274, 192          ; 2 uses
  %i.db = icmp slt i64 %i.da, %.0239
  br i1 %i.db, label %.lr.ph275, label %._crit_edge276, !llvm.loop !26

._crit_edge276:                                   ; preds = %.lr.ph275, %.preheader
  %i.dc = add nsw i64 %.1248278, -384             ; 2 uses
  %.not261 = icmp slt i64 %i.dc, %.pre-phi
  br i1 %.not261, label %._crit_edge280, label %bb.k, !llvm.loop !27

._crit_edge280:                                   ; preds = %._crit_edge276, %._crit_edge270
  %i.dd = add nsw i64 %.0244281, -8640
  %i.de = icmp sgt i64 %.0244281, 8640
  %indvars.iv.next = add i64 %indvars.iv, -8640
  %indvars.iv.next285 = add i64 %indvars.iv284, 8640
  br i1 %i.de, label %bb.h, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %._crit_edge280, %bb.g, %bb.f
  ret i32 0
}

declare i32 @dgemm_beta(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dgemm_itcopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dgemm_oncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dgemm_kernel(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dtrsm_olnncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dtrsm_kernel_RT(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 48}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !10, i64 104, !11, i64 112, !10, i64 120, !5, i64 128}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !11, i64 56}
!13 = !{!9, !10, i64 0}
!14 = !{!9, !10, i64 8}
!15 = !{!9, !11, i64 72}
!16 = !{!9, !11, i64 80}
!17 = !{!9, !10, i64 40}
!18 = !{!11, !11, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !6, i64 0}
end_hunk_0
