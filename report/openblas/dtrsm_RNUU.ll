Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrsm_RNUU?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dtrsm_RNUU(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19   ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 17 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24   ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25
  %i.q = sub nsw i64 %i.p, %i.n
  %i.r = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0236 = phi ptr [ %i.r, %bb.b ], [ %i.g, %bb.a ] ; 7 uses
  %.0227 = phi i64 [ %i.q, %bb.b ], [ %i.b, %bb.a ] ; 7 uses
  %.not245 = icmp eq ptr %i.m, null
  br i1 %.not245, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load double, ptr %i.m, align 8, !tbaa !27 ; 2 uses
  %i.t = fcmp une double %i.s, 1.000000e+00
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 @dgemm_beta(i64 noundef %.0227, i64 noundef %i.d, i64 noundef 0, double noundef %i.s, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef %.0236, i64 noundef %i.k) #3 ; 0 uses
  %.pr = load double, ptr %i.m, align 8, !tbaa !27
  %i.v = fcmp une double %.pr, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i1 [ %i.v, %bb.e ], [ true, %bb.d ]
  %i.x = icmp sgt i64 %i.d, 0
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %.lr.ph266, label %.loopexit

bb.g:                                             ; preds = %bb.c
  %.old = icmp sgt i64 %i.d, 0
  br i1 %.old, label %.lr.ph266, label %.loopexit

.lr.ph266:                                        ; preds = %bb.f, %bb.g
  %spec.store.select7 = tail call i64 @llvm.smin.i64(i64 %.0227, i64 192) ; 7 uses
  %i.y = icmp sgt i64 %.0227, 192                 ; 2 uses
  %i.z = add i64 %i.i, 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph266, %._crit_edge263
  %.0231264 = phi i64 [ 0, %.lr.ph266 ], [ %i.cw, %._crit_edge263 ] ; 12 uses
  %i.aa = sub nuw nsw i64 %i.d, %.0231264         ; 3 uses
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 8640) ; 4 uses
  %.not267 = icmp eq i64 %.0231264, 0
  br i1 %.not267, label %.preheader248, label %.lr.ph254

.lr.ph254:                                        ; preds = %bb.h
  %i.ab = add nsw i64 %spec.store.select, %.0231264 ; 3 uses
  %i.ac = icmp sgt i64 %i.aa, 0
  %i.ad = mul nsw i64 %.0231264, %i.k
  br label %bb.i

.preheader248:                                    ; preds = %._crit_edge, %bb.h
  %.pre-phi = phi i64 [ %spec.store.select, %bb.h ], [ %i.ab, %._crit_edge ] ; 2 uses
  %i.ae = icmp sgt i64 %i.aa, 0
  br i1 %i.ae, label %.lr.ph262, label %._crit_edge263

bb.i:                                             ; preds = %.lr.ph254, %._crit_edge
  %.0234252 = phi i64 [ 0, %.lr.ph254 ], [ %i.be, %._crit_edge ] ; 4 uses
  %i.af = sub nuw nsw i64 %.0231264, %.0234252
  %spec.store.select1 = tail call i64 @llvm.umin.i64(i64 %i.af, i64 384) ; 6 uses
  %i.ag = mul nsw i64 %.0234252, %i.k             ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.0236, i64 %i.ag
  %i.ai = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select7, ptr noundef %i.ah, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  br i1 %i.ac, label %.lr.ph, label %.preheader247

.lr.ph:                                           ; preds = %bb.i
  %i.aj = getelementptr [8 x i8], ptr %i.e, i64 %.0234252
  br label %bb.j

.preheader247:                                    ; preds = %bb.j, %bb.i
  br i1 %i.y, label %.lr.ph251, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.0229249 = phi i64 [ %.0231264, %.lr.ph ], [ %i.au, %bb.j ] ; 5 uses
  %i.ak = sub nuw nsw i64 %i.ab, %.0229249        ; 2 uses
  %spec.store.select2 = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 2)
  %.inv246 = icmp slt i64 %i.ak, 6
  %.0228 = select i1 %.inv246, i64 %spec.store.select2, i64 6 ; 3 uses
  %i.al = mul nsw i64 %.0229249, %i.i
  %i.am = getelementptr [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = sub nsw i64 %.0229249, %.0231264
  %i.ao = mul nsw i64 %i.an, %spec.store.select1
  %i.ap = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ao ; 2 uses
  %i.aq = tail call i32 @dgemm_oncopy(i64 noundef %spec.store.select1, i64 noundef %.0228, ptr noundef %i.am, i64 noundef %i.i, ptr noundef %i.ap) #3 ; 0 uses
  %i.ar = mul nsw i64 %.0229249, %i.k
  %i.as = getelementptr inbounds [8 x i8], ptr %.0236, i64 %i.ar
  %i.at = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select7, i64 noundef %.0228, i64 noundef %spec.store.select1, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %i.ap, ptr noundef %i.as, i64 noundef %i.k) #3 ; 0 uses
  %i.au = add nuw nsw i64 %.0228, %.0229249       ; 2 uses
  %i.av = icmp slt i64 %i.au, %i.ab
  br i1 %i.av, label %bb.j, label %.preheader247, !llvm.loop !8

.lr.ph251:                                        ; preds = %.preheader247, %.lr.ph251
  %.0232250 = phi i64 [ %i.bc, %.lr.ph251 ], [ %spec.store.select7, %.preheader247 ] ; 3 uses
  %i.aw = sub nsw i64 %.0227, %.0232250
  %spec.store.select3 = tail call i64 @llvm.smin.i64(i64 %i.aw, i64 192) ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %.0236, i64 %.0232250 ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %i.ag
  %i.az = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select1, i64 noundef %spec.store.select3, ptr noundef %i.ay, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.ba = getelementptr [8 x i8], ptr %i.ax, i64 %i.ad
  %i.bb = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select3, i64 noundef %spec.store.select, i64 noundef %spec.store.select1, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %i.ba, i64 noundef %i.k) #3 ; 0 uses
  %i.bc = add nuw nsw i64 %.0232250, 192          ; 2 uses
  %i.bd = icmp slt i64 %i.bc, %.0227
  br i1 %i.bd, label %.lr.ph251, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph251, %.preheader247
  %i.be = add nuw nsw i64 %.0234252, 384          ; 2 uses
  %i.bf = icmp samesign ult i64 %i.be, %.0231264
  br i1 %i.bf, label %bb.i, label %.preheader248, !llvm.loop !10

.lr.ph262:                                        ; preds = %.preheader248, %._crit_edge260
  %.1235261 = phi i64 [ %i.cu, %._crit_edge260 ], [ %.0231264, %.preheader248 ] ; 9 uses
  %i.bg = sub nuw nsw i64 %.pre-phi, %.1235261
  %spec.store.select4 = tail call i64 @llvm.smin.i64(i64 %i.bg, i64 384) ; 18 uses
  %i.bh = mul nsw i64 %.1235261, %i.k             ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0236, i64 %i.bh ; 2 uses
  %i.bj = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select4, i64 noundef %spec.store.select7, ptr noundef %i.bi, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.bk = mul i64 %.1235261, %i.z
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bk
  %i.bm = tail call i32 @dtrsm_ounucopy(i64 noundef %spec.store.select4, i64 noundef %spec.store.select4, ptr noundef %i.bl, i64 noundef %i.i, i64 noundef 0, ptr noundef %4) #3 ; 0 uses
  %i.bn = tail call i32 @dtrsm_kernel_RN(i64 noundef %spec.store.select7, i64 noundef %spec.store.select4, i64 noundef %spec.store.select4, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %i.bi, i64 noundef %i.k, i64 noundef 0) #3 ; 0 uses
  %i.bo = sub nsw i64 %spec.store.select, %spec.store.select4 ; 2 uses
  %i.bp = sub nsw i64 %i.bo, %.1235261
  %i.bq = add nsw i64 %i.bp, %.0231264            ; 3 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph257, label %.preheader

.lr.ph257:                                        ; preds = %.lr.ph262
  %i.bs = add nuw nsw i64 %spec.store.select4, %.1235261
  %i.bt = getelementptr [8 x i8], ptr %i.e, i64 %.1235261
  br label %bb.k

.preheader:                                       ; preds = %bb.k, %.lr.ph262
  br i1 %i.y, label %.lr.ph259, label %._crit_edge260

.lr.ph259:                                        ; preds = %.preheader
  %invariant.op = add i64 %.0231264, %i.bo
  %.reass = sub i64 %invariant.op, %.1235261
  %i.bu = mul nuw nsw i64 %spec.store.select4, %spec.store.select4
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bu
  %i.bw = add nuw nsw i64 %spec.store.select4, %.1235261
  %i.bx = mul nsw i64 %i.bw, %i.k
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph257, %bb.k
  %.1230255 = phi i64 [ 0, %.lr.ph257 ], [ %i.cj, %bb.k ] ; 4 uses
  %i.by = sub nuw nsw i64 %i.bq, %.1230255        ; 2 uses
  %spec.store.select5 = tail call i64 @llvm.umin.i64(i64 %i.by, i64 2)
  %.inv = icmp samesign ult i64 %i.by, 6
  %.1 = select i1 %.inv, i64 %spec.store.select5, i64 6 ; 3 uses
  %i.bz = add nuw nsw i64 %i.bs, %.1230255        ; 2 uses
  %i.ca = mul nsw i64 %i.bz, %i.i
  %i.cb = getelementptr [8 x i8], ptr %i.bt, i64 %i.ca
  %i.cc = add nuw nsw i64 %.1230255, %spec.store.select4
  %i.cd = mul nuw nsw i64 %i.cc, %spec.store.select4
  %i.ce = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cd ; 2 uses
  %i.cf = tail call i32 @dgemm_oncopy(i64 noundef %spec.store.select4, i64 noundef %.1, ptr noundef %i.cb, i64 noundef %i.i, ptr noundef %i.ce) #3 ; 0 uses
  %i.cg = mul nsw i64 %i.bz, %i.k
  %i.ch = getelementptr inbounds [8 x i8], ptr %.0236, i64 %i.cg
  %i.ci = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select7, i64 noundef %.1, i64 noundef %spec.store.select4, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %i.ce, ptr noundef %i.ch, i64 noundef %i.k) #3 ; 0 uses
  %i.cj = add nuw nsw i64 %.1, %.1230255          ; 2 uses
  %i.ck = icmp slt i64 %i.cj, %i.bq
  br i1 %i.ck, label %bb.k, label %.preheader, !llvm.loop !11

bb.l:                                             ; preds = %.lr.ph259, %bb.l
  %.1233258 = phi i64 [ %spec.store.select7, %.lr.ph259 ], [ %i.cs, %bb.l ] ; 3 uses
  %i.cl = sub nsw i64 %.0227, %.1233258
  %spec.store.select6 = tail call i64 @llvm.smin.i64(i64 %i.cl, i64 192) ; 3 uses
  %i.cm = getelementptr [8 x i8], ptr %.0236, i64 %.1233258 ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %i.bh ; 2 uses
  %i.co = tail call i32 @dgemm_itcopy(i64 noundef %spec.store.select4, i64 noundef %spec.store.select6, ptr noundef %i.cn, i64 noundef %i.k, ptr noundef %3) #3 ; 0 uses
  %i.cp = tail call i32 @dtrsm_kernel_RN(i64 noundef %spec.store.select6, i64 noundef %spec.store.select4, i64 noundef %spec.store.select4, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef %i.cn, i64 noundef %i.k, i64 noundef 0) #3 ; 0 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cm, i64 %i.bx
  %i.cr = tail call i32 @dgemm_kernel(i64 noundef %spec.store.select6, i64 noundef %.reass, i64 noundef %spec.store.select4, double noundef -1.000000e+00, ptr noundef %3, ptr noundef %i.bv, ptr noundef %i.cq, i64 noundef %i.k) #3 ; 0 uses
  %i.cs = add nuw nsw i64 %.1233258, 192          ; 2 uses
  %i.ct = icmp slt i64 %i.cs, %.0227
  br i1 %i.ct, label %bb.l, label %._crit_edge260, !llvm.loop !12

._crit_edge260:                                   ; preds = %bb.l, %.preheader
  %i.cu = add nuw nsw i64 %.1235261, 384          ; 2 uses
  %i.cv = icmp slt i64 %i.cu, %.pre-phi
  br i1 %i.cv, label %.lr.ph262, label %._crit_edge263, !llvm.loop !13

._crit_edge263:                                   ; preds = %._crit_edge260, %.preheader248
  %i.cw = add nuw nsw i64 %.0231264, 8640         ; 2 uses
  %i.cx = icmp slt i64 %i.cw, %i.d
  br i1 %i.cx, label %bb.h, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %._crit_edge263, %bb.g, %bb.f
  ret i32 0
}

declare i32 @dgemm_beta(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dgemm_itcopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dgemm_oncopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dgemm_kernel(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dtrsm_ounucopy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dtrsm_kernel_RN(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

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
!8 = distinct !{!8, !28}
!9 = distinct !{!9, !28}
!10 = distinct !{!10, !28}
!11 = distinct !{!11, !28}
!12 = distinct !{!12, !28}
!13 = distinct !{!13, !28}
!14 = distinct !{!14, !28}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !15, i64 104, !16, i64 112, !15, i64 120, !5, i64 128}
!18 = !{!17, !16, i64 48}
!19 = !{!17, !16, i64 56}
!20 = !{!17, !15, i64 0}
!21 = !{!17, !15, i64 8}
!22 = !{!17, !16, i64 72}
!23 = !{!17, !16, i64 80}
!24 = !{!17, !15, i64 40}
!25 = !{!16, !16, i64 0}
!26 = !{!"double", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
end_hunk_0
