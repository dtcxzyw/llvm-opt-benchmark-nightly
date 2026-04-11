inline.NumInlined: 12
inline.NumDeleted: 1
begin_hunk_0
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @SharpYuvComputeConversionMatrix(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 48)) %1) local_unnamed_addr #0 {
bb.a:
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !7 ; 3 uses
  %3 = fsub <2 x float> splat (float 1.000000e+00), %2 ; 4 uses
  %4 = fdiv <2 x float> splat (float 5.000000e-01), %3 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.c = add nsw i32 %i.b, -8                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1_@SharpYuvComputeConversionMatrix:bb.a
  %i.k = fdiv float %i.j, %i.h
  %i.l = shl i32 224, %i.c
  %i.m = sitofp i32 %i.l to float
  %i.n = fdiv float %i.m, %i.h
  %5 = insertelement <2 x float> poison, float %i.n, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x float> %4, %6
  %i.o = shl i32 16, %i.c
  %i.p = sitofp i32 %i.o to float
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 6.553600e+04, float 5.000000e-01)
end_hunk_1
begin_hunk_2_@SharpYuvComputeConversionMatrix:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %.056 = phi i32 [ %i.s, %bb.b ], [ 0, %bb.a ]
  %.0.a = phi float [ %i.k, %bb.b ], [ 1.000000e+00, %bb.a ] ; 3 uses
  %8 = phi <2 x float> [ %7, %bb.b ], [ %4, %bb.a ] ; 4 uses
  %i.t = shl i32 128, %i.c
  %i.u = sitofp i32 %i.t to float
  %9 = extractelement <2 x float> %3, i64 0
  %10 = extractelement <2 x float> %2, i64 1      ; 3 uses
  %i.v = fsub float %9, %10                       ; 2 uses
  %11 = extractelement <2 x float> %2, i64 0      ; 2 uses
  %i.w = fmul float %11, %.0.a
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float 6.553600e+04, float 5.000000e-01)
  %i.y = tail call float @llvm.floor.f32(float %i.x)
  %i.z = fmul float %i.v, %.0.a
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float 6.553600e+04, float 5.000000e-01)
  %i.ab = tail call float @llvm.floor.f32(float %i.aa)
  %i.ac = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.ab, i64 1
  %i.ae = fptosi <2 x float> %i.ad to <2 x i32>
  store <2 x i32> %i.ae, ptr %1, align 4, !tbaa !3
  %i.af = fmul float %10, %.0.a
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float 6.553600e+04, float 5.000000e-01)
  %i.ah = tail call float @llvm.floor.f32(float %i.ag)
  %i.ai = fptosi float %i.ah to i32
end_hunk_2
begin_hunk_3_@SharpYuvComputeConversionMatrix:bb.a
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.056, ptr %i.ak, align 4, !tbaa !3
  %i.al = fneg float %11
  %12 = extractelement <2 x float> %8, i64 1      ; 2 uses
  %i.am = fmul float %12, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float 6.553600e+04, float 5.000000e-01)
  %i.ao = tail call float @llvm.floor.f32(float %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = fneg float %i.v                         ; 2 uses
  %i.ar = fmul float %12, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float 6.553600e+04, float 5.000000e-01)
  %i.at = tail call float @llvm.floor.f32(float %i.as)
  %foldExtExtBinop = fmul <2 x float> %3, %8
  %13 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.au = tail call float @llvm.fmuladd.f32(float %13, float 6.553600e+04, float 5.000000e-01)
  %i.av = tail call float @llvm.floor.f32(float %i.au)
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.u, float 6.553600e+04, float 5.000000e-01)
  %i.ax = tail call float @llvm.floor.f32(float %i.aw)
end_hunk_3
begin_hunk_4_@SharpYuvComputeConversionMatrix:bb.a
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = fptosi <4 x float> %i.bb to <4 x i32>   ; 2 uses
  store <4 x i32> %i.bc, ptr %i.ap, align 4, !tbaa !3
  %14 = extractelement <2 x float> %8, i64 0      ; 2 uses
  %foldExtExtBinop58 = fmul <2 x float> %3, %8
  %15 = extractelement <2 x float> %foldExtExtBinop58, i64 0
  %i.bd = tail call float @llvm.fmuladd.f32(float %15, float 6.553600e+04, float 5.000000e-01)
  %i.be = tail call float @llvm.floor.f32(float %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = fmul float %14, %i.aq
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float 6.553600e+04, float 5.000000e-01)
  %i.bi = tail call float @llvm.floor.f32(float %i.bh)
  %i.bj = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bi, i64 1
  %i.bl = fptosi <2 x float> %i.bk to <2 x i32>
  store <2 x i32> %i.bl, ptr %i.bf, align 4, !tbaa !3
  %i.bm = fneg float %10
  %i.bn = fmul float %14, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float 6.553600e+04, float 5.000000e-01)
  %i.bp = tail call float @llvm.floor.f32(float %i.bo)
  %i.bq = fptosi float %i.bp to i32
end_hunk_4
begin_hunk_5_@llvm.floor.f32
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!10, !4, i64 8}
!10 = !{!"", !8, i64 0, !8, i64 4, !4, i64 8, !4, i64 12}
!11 = !{!10, !4, i64 12}
end_hunk_5
