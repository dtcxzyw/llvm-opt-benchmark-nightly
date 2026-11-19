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
  %i.h = sext i32 %6 to i64
  %i.i = sext i32 %8 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  %i.j = shl nsw i64 %i.i, 4
  %ident.check = icmp ne i32 %6, 1
  br label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.k = tail call i32 @llvm.smin.i32(i32 %8, i32 %2) ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %.preheader
  %i.m = add nsw i32 %4, %1
  %i.n = add nsw i32 %4, %3                       ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  %i.p = sext i32 %6 to i64                       ; 2 uses
  %i.q = sext i32 %8 to i64
  %wide.trip.count137 = zext nneg i32 %i.k to i64
  %9 = shl nsw i64 %i.p, 4
  %ident.check162 = icmp ne i32 %8, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph119, %._crit_edge115
  %indvars.iv134 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next135, %._crit_edge115 ] ; 8 uses
  %indvars.iv127 = phi i32 [ %4, %.lr.ph119 ], [ %indvars.iv.next128, %._crit_edge115 ] ; 3 uses
  %smax163 = tail call i32 @llvm.smax.i32(i32 %indvars.iv127, i32 0)
  %10 = zext nneg i32 %smax163 to i64             ; 3 uses
  %11 = add nuw nsw i64 %10, 1
  %12 = shl nuw nsw i64 %indvars.iv134, 4
  %scevgep165 = getelementptr i8, ptr %7, i64 %12
  %13 = shl nuw nsw i64 %10, 4
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %13 ; 2 uses
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
  %i.y = zext nneg i32 %smax129 to i64            ; 8 uses
  %i.z = mul nsw i64 %indvars.iv134, %i.p
  %i.aa = getelementptr [16 x i8], ptr %5, i64 %i.z ; 3 uses
  %invariant.gep116 = getelementptr [16 x i8], ptr %7, i64 %indvars.iv134 ; 3 uses
  %sext132 = zext nneg i32 %i.w to i64            ; 3 uses
  %14 = add nuw nsw i64 %i.y, 1
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 %sext132) ; 2 uses
  %16 = sub nsw i64 %15, %i.y                     ; 3 uses
  %min.iters.check183 = icmp ult i64 %16, 32
  br i1 %min.iters.check183, label %scalar.ph182.preheader, label %vector.scevcheck161

vector.scevcheck161:                              ; preds = %.lr.ph114
  %umax164 = tail call i64 @llvm.umax.i64(i64 %11, i64 %sext132)
  %17 = xor i64 %10, -1
  %18 = add nsw i64 %umax164, %17                 ; 2 uses
  %mul.result168 = shl nsw i64 %18, 4
  %mul.overflow169 = icmp ugt i64 %18, 1152921504606846975
  %19 = getelementptr i8, ptr %scevgep166, i64 %mul.result168
  %20 = icmp ult ptr %19, %scevgep166
  %21 = or i1 %20, %mul.overflow169
  %22 = or i1 %ident.check162, %21
  br i1 %22, label %scalar.ph182.preheader, label %vector.memcheck184

vector.memcheck184:                               ; preds = %vector.scevcheck161
  %23 = shl nuw nsw i64 %indvars.iv134, 4         ; 2 uses
  %24 = shl nuw nsw i64 %i.y, 4                   ; 2 uses
  %25 = getelementptr i8, ptr %7, i64 %23
  %26 = getelementptr i8, ptr %25, i64 %24
  %27 = shl nuw nsw i64 %15, 4                    ; 2 uses
  %28 = getelementptr i8, ptr %7, i64 %23
  %29 = getelementptr i8, ptr %28, i64 %27
  %30 = mul i64 %indvars.iv134, %9                ; 2 uses
  %31 = getelementptr i8, ptr %5, i64 %30
  %32 = getelementptr i8, ptr %31, i64 %24
  %33 = getelementptr i8, ptr %5, i64 %30
  %34 = getelementptr i8, ptr %33, i64 %27
  %bound0185 = icmp ult ptr %26, %34
  %bound1186 = icmp ult ptr %32, %29
  %found.conflict187 = and i1 %bound0185, %bound1186
  br i1 %found.conflict187, label %scalar.ph182.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %vector.memcheck184
  %n.vec189 = and i64 %16, -8                     ; 3 uses
  %35 = add nsw i64 %n.vec189, %i.y
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next200, %vector.body190 ] ; 2 uses
  %36 = add nuw i64 %index191, %i.y               ; 3 uses
  %37 = add i64 %36, 4                            ; 2 uses
  %38 = getelementptr [16 x i8], ptr %i.aa, i64 %36
  %39 = getelementptr [16 x i8], ptr %i.aa, i64 %37
  %wide.vec192 = load <8 x double>, ptr %38, align 8, !alias.scope !20
  %wide.vec195 = load <8 x double>, ptr %39, align 8, !alias.scope !20
  %40 = getelementptr [16 x i8], ptr %invariant.gep116, i64 %36
  %41 = getelementptr [16 x i8], ptr %invariant.gep116, i64 %37
  store <8 x double> %wide.vec192, ptr %40, align 8, !alias.scope !21, !noalias !20
  store <8 x double> %wide.vec195, ptr %41, align 8, !alias.scope !21, !noalias !20
  %index.next200 = add nuw i64 %index191, 8       ; 2 uses
  %42 = icmp eq i64 %index.next200, %n.vec189
  br i1 %42, label %middle.block201, label %vector.body190, !llvm.loop !11

middle.block201:                                  ; preds = %vector.body190
  %cmp.n202 = icmp eq i64 %16, %n.vec189
  br i1 %cmp.n202, label %._crit_edge115, label %scalar.ph182.preheader

scalar.ph182.preheader:                           ; preds = %vector.memcheck184, %vector.scevcheck161, %.lr.ph114, %middle.block201
  %indvars.iv130.ph = phi i64 [ %i.y, %vector.memcheck184 ], [ %i.y, %vector.scevcheck161 ], [ %i.y, %.lr.ph114 ], [ %35, %middle.block201 ]
  br label %scalar.ph182

scalar.ph182:                                     ; preds = %scalar.ph182.preheader, %scalar.ph182
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %scalar.ph182 ], [ %indvars.iv130.ph, %scalar.ph182.preheader ] ; 3 uses
  %i.ab = getelementptr [16 x i8], ptr %i.aa, i64 %indvars.iv130
  %i.ac = mul nuw nsw i64 %indvars.iv130, %i.q
  %gep117 = getelementptr [16 x i8], ptr %invariant.gep116, i64 %i.ac
  %i.ad = load <2 x double>, ptr %i.ab, align 8
  store <2 x double> %i.ad, ptr %gep117, align 8
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next131, %sext132
  br i1 %i.ae, label %scalar.ph182, label %._crit_edge115, !llvm.loop !12

._crit_edge115:                                   ; preds = %scalar.ph182, %middle.block201, %bb.c
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %indvars.iv.next128 = add i32 %indvars.iv127, -1
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %.loopexit, label %bb.c, !llvm.loop !13

bb.d:                                             ; preds = %.lr.ph111, %._crit_edge
  %indvars.iv124 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next125, %._crit_edge ] ; 8 uses
  %indvars.iv = phi i32 [ %4, %.lr.ph111 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %smax146 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.af = zext nneg i32 %smax146 to i64           ; 3 uses
  %i.ag = add nuw nsw i64 %i.af, 1
  %i.ah = shl nuw nsw i64 %indvars.iv124, 4
  %scevgep = getelementptr i8, ptr %5, i64 %i.ah
  %43 = shl nuw nsw i64 %i.af, 4
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %43 ; 2 uses
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
  %i.ap = zext nneg i32 %smax to i64              ; 8 uses
  %invariant.gep = getelementptr [16 x i8], ptr %5, i64 %indvars.iv124 ; 3 uses
  %i.aq = mul nsw i64 %indvars.iv124, %i.i
  %i.ar = getelementptr [16 x i8], ptr %7, i64 %i.aq ; 3 uses
  %sext = zext nneg i32 %i.an to i64              ; 3 uses
  %i.as = add nuw nsw i64 %i.ap, 1
  %i.at = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %sext) ; 2 uses
  %i.au = sub nsw i64 %i.at, %i.ap                ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %sext)
  %i.av = xor i64 %i.af, -1
  %i.aw = add nsw i64 %umax, %i.av                ; 2 uses
  %mul.result = shl nsw i64 %i.aw, 4
  %mul.overflow = icmp ugt i64 %i.aw, 1152921504606846975
  %i.ax = getelementptr i8, ptr %scevgep147, i64 %mul.result
  %i.ay = icmp ult ptr %i.ax, %scevgep147
  %44 = or i1 %i.ay, %mul.overflow
  %i.az = or i1 %ident.check, %44
  br i1 %i.az, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ba = mul i64 %indvars.iv124, %i.j            ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ap, 4                ; 2 uses
  %i.bc = getelementptr i8, ptr %7, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.bb
  %i.be = shl nuw nsw i64 %i.at, 4                ; 2 uses
  %i.bf = getelementptr i8, ptr %7, i64 %i.ba
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.be
  %i.bh = shl nuw nsw i64 %indvars.iv124, 4       ; 2 uses
  %i.bi = getelementptr i8, ptr %5, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bb
  %i.bk = getelementptr i8, ptr %5, i64 %i.bh
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.be
  %bound0.a = icmp ult ptr %i.bd, %i.bl
  %bound1.a = icmp ult ptr %i.bj, %i.bg
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  br i1 %found.conflict.a, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, -8                      ; 3 uses
  %i.bm = add nsw i64 %n.vec, %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %45 = add nuw i64 %index, %i.ap                 ; 3 uses
  %46 = add i64 %45, 4                            ; 2 uses
  %47 = getelementptr [16 x i8], ptr %invariant.gep, i64 %45
  %48 = getelementptr [16 x i8], ptr %invariant.gep, i64 %46
  %wide.vec = load <8 x double>, ptr %47, align 8, !alias.scope !25
  %wide.vec157 = load <8 x double>, ptr %48, align 8, !alias.scope !25
  %i.bn = getelementptr [16 x i8], ptr %i.ar, i64 %45
  %49 = getelementptr [16 x i8], ptr %i.ar, i64 %46
  store <8 x double> %wide.vec, ptr %i.bn, align 8, !alias.scope !26, !noalias !25
  store <8 x double> %wide.vec157, ptr %49, align 8, !alias.scope !26, !noalias !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !17

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
  br i1 %i.bs, label %scalar.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.d
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !19

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge115, %.preheader107, %.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !22, !23, !24}
!12 = distinct !{!12, !22, !23}
!13 = distinct !{!13, !22}
!14 = distinct !{!14, i1 false, !"LVerDomain"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !22, !23, !24}
!18 = distinct !{!18, !22, !23}
!19 = distinct !{!19, !22}
!20 = !{!9}
!21 = !{!10}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!15}
!26 = !{!16}
end_hunk_0
