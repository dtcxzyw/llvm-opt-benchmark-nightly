Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_zgb_trans?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @LAPACKE_zgb_trans(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %5, null
  %i.b = icmp eq ptr %7, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %.loopexit [
    i32 102, label %.preheader
    i32 101, label %.preheader107
  ]

.preheader107:                                    ; preds = %bb.b
  %i.c = tail call i32 @llvm.smin.i32(i32 %2, i32 %6) ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph111, label %.loopexit

.lr.ph111:                                        ; preds = %.preheader107
  %i.e = add nsw i32 %4, %1
  %i.f = add nsw i32 %4, %3                       ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  %i.h = sext i32 %6 to i64                       ; 7 uses
  %i.i = sext i32 %8 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  %9 = shl nsw i64 %i.h, 4
  %10 = mul nsw i64 %i.h, -16
  %11 = shl nsw i64 %i.h, 4
  %i.j = shl nsw i64 %i.i, 4
  %12 = icmp slt i32 %6, 0                        ; 2 uses
  %13 = select i1 %12, i64 %10, i64 %9
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.k = tail call i32 @llvm.smin.i32(i32 %8, i32 %2) ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %.preheader
  %i.m = add nsw i32 %4, %1
  %i.n = add nsw i32 %4, %3                       ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  %i.p = sext i32 %6 to i64
  %i.q = sext i32 %8 to i64
  %wide.trip.count137 = zext nneg i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph119, %._crit_edge115
  %indvars.iv134 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next135, %._crit_edge115 ] ; 5 uses
  %indvars.iv127 = phi i32 [ %4, %.lr.ph119 ], [ %indvars.iv.next128, %._crit_edge115 ] ; 2 uses
  %i.r = trunc i64 %indvars.iv134 to i32
  %i.s = sub i32 %4, %i.r
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 0)
  %i.u = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.v = sub i32 %i.m, %i.u                       ; 2 uses
  %.not103 = icmp sgt i32 %i.v, %i.n
  %. = select i1 %.not103, i32 %i.o, i32 %i.v
  %i.w = tail call i32 @llvm.smin.i32(i32 %6, i32 %.) ; 2 uses
  %i.x = icmp slt i32 %i.t, %i.w
  br i1 %i.x, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.c
  %smax129 = tail call i32 @llvm.smax.i32(i32 %indvars.iv127, i32 0)
  %i.y = zext nneg i32 %smax129 to i64
  %i.z = mul nsw i64 %indvars.iv134, %i.p
  %i.aa = getelementptr [16 x i8], ptr %5, i64 %i.z
  %invariant.gep116 = getelementptr [16 x i8], ptr %7, i64 %indvars.iv134
  %sext132 = zext nneg i32 %i.w to i64
  br label %scalar.ph182

scalar.ph182:                                     ; preds = %.lr.ph114, %scalar.ph182
  %indvars.iv130 = phi i64 [ %i.y, %.lr.ph114 ], [ %indvars.iv.next131, %scalar.ph182 ] ; 3 uses
  %i.ab = getelementptr [16 x i8], ptr %i.aa, i64 %indvars.iv130
  %i.ac = mul nuw nsw i64 %indvars.iv130, %i.q
  %gep117 = getelementptr [16 x i8], ptr %invariant.gep116, i64 %i.ac
  %i.ad = load <2 x double>, ptr %i.ab, align 8
  store <2 x double> %i.ad, ptr %gep117, align 8
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next131, %sext132
  br i1 %i.ae, label %scalar.ph182, label %._crit_edge115, !llvm.loop !8

._crit_edge115:                                   ; preds = %scalar.ph182, %bb.c
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %indvars.iv.next128 = add i32 %indvars.iv127, -1
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %.loopexit, label %bb.c, !llvm.loop !9

bb.d:                                             ; preds = %.lr.ph111, %._crit_edge
  %indvars.iv124 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next125, %._crit_edge ] ; 8 uses
  %indvars.iv = phi i32 [ %4, %.lr.ph111 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %smax146 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.af = zext nneg i32 %smax146 to i64           ; 3 uses
  %i.ag = add nuw nsw i64 %i.af, 1
  %i.ah = shl nuw nsw i64 %indvars.iv124, 4
  %scevgep = getelementptr i8, ptr %5, i64 %i.ah
  %14 = mul i64 %11, %i.af
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %14 ; 4 uses
  %i.ai = trunc i64 %indvars.iv124 to i32
  %i.aj = sub i32 %4, %i.ai
  %i.ak = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.al = trunc nuw nsw i64 %indvars.iv124 to i32
  %i.am = sub i32 %i.e, %i.al                     ; 2 uses
  %.not = icmp sgt i32 %i.am, %i.f
  %.105 = select i1 %.not, i32 %i.g, i32 %i.am
  %i.an = tail call i32 @llvm.smin.i32(i32 %8, i32 %.105) ; 2 uses
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.ap = zext nneg i32 %smax to i64              ; 10 uses
  %invariant.gep = getelementptr [16 x i8], ptr %5, i64 %indvars.iv124 ; 2 uses
  %i.aq = mul nsw i64 %indvars.iv124, %i.i
  %i.ar = getelementptr [16 x i8], ptr %7, i64 %i.aq ; 2 uses
  %sext = zext nneg i32 %i.an to i64              ; 3 uses
  %i.as = add nuw nsw i64 %i.ap, 1
  %i.at = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %sext) ; 2 uses
  %i.au = sub nsw i64 %i.at, %i.ap                ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %sext)
  %i.av = xor i64 %i.af, -1
  %i.aw = add nsw i64 %umax, %i.av
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 %i.aw) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %15 = sub i64 0, %mul.result
  %16 = getelementptr i8, ptr %scevgep147, i64 %mul.result
  %i.ax = getelementptr i8, ptr %scevgep147, i64 %15
  %i.ay = icmp ult ptr %16, %scevgep147
  %17 = icmp ugt ptr %i.ax, %scevgep147
  %18 = select i1 %12, i1 %17, i1 %i.ay
  %i.az = or i1 %18, %mul.overflow
  br i1 %i.az, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ba = mul i64 %indvars.iv124, %i.j            ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ap, 4
  %i.bc = getelementptr i8, ptr %7, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.bb  ; 2 uses
  %i.be = shl nuw nsw i64 %i.at, 4                ; 2 uses
  %i.bf = getelementptr i8, ptr %7, i64 %i.ba
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.be  ; 2 uses
  %i.bh = shl nuw nsw i64 %indvars.iv124, 4       ; 3 uses
  %19 = or disjoint i64 %i.bh, 8                  ; 2 uses
  %20 = mul nsw i64 %i.h, %i.ap
  %21 = shl i64 %20, 4                            ; 2 uses
  %22 = getelementptr i8, ptr %5, i64 %19
  %23 = getelementptr i8, ptr %22, i64 %21        ; 4 uses
  %24 = add nsw i64 %i.be, -16
  %25 = mul i64 %24, %i.h                         ; 2 uses
  %26 = getelementptr i8, ptr %5, i64 %19
  %27 = getelementptr i8, ptr %26, i64 %25        ; 4 uses
  %28 = icmp ult ptr %23, %27
  %29 = select i1 %28, ptr %23, ptr %27
  %30 = icmp ugt ptr %23, %27
  %31 = select i1 %30, ptr %23, ptr %27
  %32 = getelementptr i8, ptr %31, i64 8
  %33 = getelementptr i8, ptr %5, i64 %i.bh
  %i.bi = getelementptr i8, ptr %33, i64 %21      ; 4 uses
  %i.bj = getelementptr i8, ptr %5, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 %25    ; 4 uses
  %34 = icmp ult ptr %i.bi, %i.bk
  %35 = select i1 %34, ptr %i.bi, ptr %i.bk
  %36 = icmp ugt ptr %i.bi, %i.bk
  %37 = select i1 %36, ptr %i.bi, ptr %i.bk
  %i.bl = getelementptr i8, ptr %37, i64 8
  %bound0 = icmp ult ptr %i.bd, %32
  %bound1 = icmp ult ptr %29, %i.bg
  %found.conflict = and i1 %bound0, %bound1
  %bound0.a = icmp ult ptr %i.bd, %i.bl
  %bound1.a = icmp ult ptr %35, %i.bg
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, -4                      ; 3 uses
  %i.bm = add nsw i64 %n.vec, %i.ap
  %broadcast.splatinsert170 = insertelement <4 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat171 = shufflevector <4 x i64> %broadcast.splatinsert170, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat171, <i64 0, i64 1, i64 2, i64 3>
  %invariant.gep175 = getelementptr [16 x i8], ptr %i.ar, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %38 = mul nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %wide.gep = getelementptr [16 x i8], ptr %invariant.gep, <4 x i64> %38 ; 2 uses
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !alias.scope !18
  %wide.gep172 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %wide.masked.gather173 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep172, <4 x i1> splat (i1 true), <4 x double> poison), !alias.scope !19
  %i.bn = getelementptr [16 x i8], ptr %invariant.gep175, i64 %index
  %interleaved.vec = shufflevector <4 x double> %wide.masked.gather, <4 x double> %wide.masked.gather173, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bn, align 8, !alias.scope !20, !noalias !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv121.ph = phi i64 [ %i.ap, %vector.memcheck ], [ %i.ap, %vector.scevcheck ], [ %i.ap, %.lr.ph ], [ %i.bm, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %scalar.ph ], [ %indvars.iv121.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bp = mul nuw nsw i64 %indvars.iv121, %i.h
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %i.bp
  %i.bq = getelementptr [16 x i8], ptr %i.ar, i64 %indvars.iv121
  %i.br = load <2 x double>, ptr %gep, align 8
  store <2 x double> %i.br, ptr %i.bq, align 8
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.bs = icmp samesign ult i64 %indvars.iv.next122, %sext
  br i1 %i.bs, label %scalar.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.d
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !16

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge115, %.preheader107, %.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !17}
!9 = distinct !{!9, !17}
!10 = distinct !{!10, i1 false, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !17, !22, !23}
!15 = distinct !{!15, !17, !22}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!11}
!19 = !{!12}
!20 = !{!13}
!21 = !{!12, !11}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
