Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegaudiodsp?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mpadsp_table_init = internal global i32 0, align 4
@ff_mdct_win_float = external hidden local_unnamed_addr global [8 x [40 x float]], align 16
@ff_mdct_win_fixed = external hidden local_unnamed_addr global [8 x [40 x i32]], align 16

; Function Attrs: cold nounwind optsize uwtable
define hidden void @ff_mpadsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 48)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_once(ptr noundef nonnull @mpadsp_table_init, ptr noundef nonnull @mpadsp_init_tabs) #4 ; 0 uses
  store ptr @ff_mpadsp_apply_window_float, ptr %0, align 8, !tbaa !9
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @ff_mpadsp_apply_window_fixed, ptr %1, align 8, !tbaa !12
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @ff_dct32_float, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @ff_dct32_fixed, ptr %3, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @ff_imdct36_blocks_float, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @ff_imdct36_blocks_fixed, ptr %i.c, align 8, !tbaa !16
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mpadsp_init_tabs() #2 {
bb.a:
  br label %.preheader59

.preheader59:                                     ; preds = %bb.a, %bb.k
  %.063 = phi i32 [ 0, %bb.a ], [ %i.aj, %bb.k ]  ; 16 uses
  %i.a = urem i32 %.063, 3
  %.not = icmp eq i32 %i.a, 1
  %i.b = icmp samesign ult i32 %.063, 6
  %i.c = icmp samesign ult i32 %.063, 12
  %0 = add nsw i32 %.063, -6
  %1 = uitofp nneg i32 %0 to double
  %2 = uitofp nneg i32 %.063 to double
  %3 = insertelement <2 x double> poison, double %2, i64 0
  %4 = insertelement <2 x double> %3, double %1, i64 1
  %i.d = fadd nnan nsz <2 x double> %4, splat (double 5.000000e-01)
  %i.e = fmul nnan nsz <2 x double> %i.d, splat (double f0x400921FB54442D18)
  %i.f = fdiv nsz <2 x double> %i.e, <double 3.600000e+01, double 1.200000e+01> ; 2 uses
  %i.g = extractelement <2 x double> %i.f, i64 0
  %i.h = tail call nsz double @llvm.sin.f64(double %i.g) ; 3 uses
  %i.i = extractelement <2 x double> %i.f, i64 1
  %i.j = tail call nsz double @llvm.sin.f64(double %i.i)
  %i.k = icmp samesign ugt i32 %.063, 29
  %i.l = icmp samesign ugt i32 %.063, 23
  %5 = shl nuw nsw i32 %.063, 1
  %6 = add nuw nsw i32 %5, 19
  %i.m = add nsw i32 %.063, -18
  %i.n = uitofp nneg i32 %6 to double
  %7 = uitofp nneg i32 %i.m to double
  %8 = insertelement <2 x double> poison, double %7, i64 0
  %9 = insertelement <2 x double> %8, double %i.n, i64 1
  %10 = fadd nnan nsz <2 x double> %9, <double 5.000000e-01, double -0.000000e+00>
  %11 = fmul nnan nsz <2 x double> %10, splat (double f0x400921FB54442D18)
  %12 = fdiv nsz <2 x double> %11, <double 1.200000e+01, double 7.200000e+01> ; 2 uses
  %13 = extractelement <2 x double> %12, i64 0
  %14 = tail call nsz double @llvm.sin.f64(double %13)
  %15 = extractelement <2 x double> %12, i64 1
  %i.o = tail call nsz double @llvm.cos.f64(double %15)
  %i.p = fdiv nsz double f0x3FEC24DD2F1A9FBE, %i.o
  %i.q = udiv i32 %.063, 3
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_mdct_win_float, i64 320), i64 %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_mdct_win_fixed, i64 320), i64 %i.r
  %i.u = icmp samesign ult i32 %.063, 18
  %i.v = add nuw nsw i32 %.063, 2
  %i.w = select i1 %i.u, i32 %.063, i32 %i.v
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @ff_mdct_win_float, i64 %i.x
  %invariant.gep61 = getelementptr inbounds nuw [4 x i8], ptr @ff_mdct_win_fixed, i64 %i.x
  %.mux69 = select i1 %i.c, double %i.j, double %i.h
  %.mux = select i1 %i.l, double %14, double %i.h
  %i.y = add nsw i32 %.063, -18
  %brmerge81 = icmp ult i32 %i.y, -6
  %.mux82 = select i1 %i.b, double 0.000000e+00, double %.mux69
  %i.z = add nsw i32 %.063, -24
  %brmerge79 = icmp ult i32 %i.z, -6
  %.mux80 = select i1 %i.k, double 0.000000e+00, double %.mux
  br label %bb.b

bb.b:                                             ; preds = %.preheader59, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader59 ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %i.aa = icmp ne i64 %indvars.iv, 2              ; 2 uses
  %or.cond = or i1 %.not, %i.aa
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.ab, label %bb.g [
    i32 1, label %bb.d
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %brmerge79, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %brmerge81, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %.054 = phi nsz double [ %i.h, %bb.c ], [ %.mux82, %bb.e ], [ %.mux80, %bb.d ], [ 1.000000e+00, %bb.f ]
  %i.ac = fmul nsz double %i.p, %.054
  %i.ad = fmul nsz double %i.ac, 3.125000e-02     ; 3 uses
  %i.ae = fptrunc nsz double %i.ad to float       ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.ae, ptr %i.s, align 4, !tbaa !17
  %i.af = tail call nsz double @llvm.fmuladd.f64(double %i.ad, double f0x41F0000000000000, double 5.000000e-01)
  %i.ag = fptosi double %i.af to i32
  store i32 %i.ag, ptr %i.t, align 4, !tbaa !19
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %gep = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.ae, ptr %gep, align 4, !tbaa !17
  %i.ah = tail call nsz double @llvm.fmuladd.f64(double %i.ad, double f0x41F0000000000000, double 5.000000e-01)
  %i.ai = fptosi double %i.ah to i32
  %gep62 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep61, i64 %indvars.iv
  store i32 %i.ai, ptr %gep62, align 4, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.k, label %bb.b, !llvm.loop !20

bb.k:                                             ; preds = %bb.j
  %i.aj = add nuw nsw i32 %.063, 1                ; 2 uses
  %exitcond71.not = icmp eq i32 %i.aj, 36
  br i1 %exitcond71.not, label %.preheader, label %.preheader59, !llvm.loop !22

.preheader:                                       ; preds = %bb.k, %middle.block
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %middle.block ], [ 0, %bb.k ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [160 x i8], ptr @ff_mdct_win_float, i64 %indvars.iv75
  %i.al = or disjoint i64 %indvars.iv75, 4        ; 2 uses
  %i.am = getelementptr inbounds nuw [160 x i8], ptr @ff_mdct_win_float, i64 %i.al
  %i.an = getelementptr inbounds nuw [160 x i8], ptr @ff_mdct_win_fixed, i64 %indvars.iv75
  %i.ao = getelementptr inbounds nuw [160 x i8], ptr @ff_mdct_win_fixed, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl nuw i64 %index, 1                   ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ap
  %wide.vec = load <4 x float>, ptr %i.aq, align 16, !tbaa !17 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ap
  %i.as = fneg nsz <4 x float> %wide.vec
  %interleaved.vec = shufflevector <4 x float> %wide.vec, <4 x float> %i.as, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %interleaved.vec, ptr %i.ar, align 16, !tbaa !17
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ap
  %wide.vec84 = load <4 x i32>, ptr %i.at, align 16, !tbaa !19 ; 2 uses
  %strided.vec85 = shufflevector <4 x i32> %wide.vec84, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec86 = shufflevector <4 x i32> %wide.vec84, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.av = sub nsw <2 x i32> zeroinitializer, %strided.vec86
  %interleaved.vec87 = shufflevector <2 x i32> %strided.vec85, <2 x i32> %i.av, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec87, ptr %i.au, align 16, !tbaa !19
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aw = icmp eq i64 %index.next, 20
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next76, 4
  br i1 %exitcond78.not, label %bb.l, label %.preheader, !llvm.loop !26

bb.l:                                             ; preds = %middle.block
  ret void
}

declare hidden void @ff_mpadsp_apply_window_float(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare hidden void @ff_mpadsp_apply_window_fixed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare void @ff_dct32_float(ptr noundef, ptr noundef) #1

declare void @ff_dct32_fixed(ptr noundef, ptr noundef) #1

declare hidden void @ff_imdct36_blocks_float(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare hidden void @ff_imdct36_blocks_fixed(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"MPADSPContext", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!10, !11, i64 16}
!14 = !{!10, !11, i64 24}
!15 = !{!10, !11, i64 32}
!16 = !{!10, !11, i64 40}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !7, i64 0}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !21}
end_hunk_0
