inline.NumInlined: 101
inline.NumDeleted: 37
begin_hunk_0_@_ZNK8facebook5velox9functions9aggregate23ExtendedRegrAccumulator3m2YEv:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox9functions9aggregate23ExtendedRegrAccumulator6updateEdd(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !16
  %i.c = add nsw i64 %i.b, 1                      ; 2 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !16
  %i.d = sitofp i64 %i.c to double
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %5 = load double, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions9aggregate23ExtendedRegrAccumulator6updateEdd:bb.a
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 3 uses
  %7 = extractelement <2 x double> %i.l, i64 1    ; 2 uses
  %8 = extractelement <2 x double> %i.l, i64 0
  store double %8, ptr %i.a, align 8, !tbaa !20
  store double %7, ptr %3, align 8, !tbaa !21
  %9 = fsub double %2, %7
  %10 = fsub <2 x double> %i.g, %i.l
  %11 = extractelement <2 x double> %i.h, i64 0
  %12 = fmul double %11, %9
  %13 = fadd double %5, %12
  store double %13, ptr %4, align 8, !tbaa !19
  %14 = fmul <2 x double> %i.h, %10
  %15 = load <2 x double>, ptr %6, align 8, !tbaa !22
  %16 = fadd <2 x double> %14, %15
  store <2 x double> %16, ptr %6, align 8, !tbaa !22
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox9functions9aggregate15CorrAccumulator6updateEdd
define void @_ZN8facebook5velox9functions9aggregate15CorrAccumulator6updateEdd(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %0, align 8, !tbaa !16
  %i.c = add nsw i64 %i.b, 1                      ; 2 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !16
  %i.d = sitofp i64 %i.c to double
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %5 = load double, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.f = insertelement <2 x double> poison, double %1, i64 0
  %i.g = insertelement <2 x double> %i.f, double %2, i64 1 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox9functions9aggregate15CorrAccumulator6updateEdd:bb.a
  %i.i = insertelement <2 x double> poison, double %i.d, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x double> %i.h, %i.j
  %i.l = fadd <2 x double> %i.e, %i.k             ; 3 uses
  %7 = extractelement <2 x double> %i.l, i64 1    ; 2 uses
  %8 = extractelement <2 x double> %i.l, i64 0
  store double %8, ptr %i.a, align 8, !tbaa !20
  store double %7, ptr %3, align 8, !tbaa !21
  %9 = fsub double %2, %7
  %10 = fsub <2 x double> %i.g, %i.l
  %11 = extractelement <2 x double> %i.h, i64 0
  %12 = fmul double %11, %9
  %13 = fadd double %5, %12
  store double %13, ptr %4, align 8, !tbaa !19
  %14 = fmul <2 x double> %i.h, %10
  %15 = load <2 x double>, ptr %6, align 8, !tbaa !22
  %16 = fadd <2 x double> %15, %14
  store <2 x double> %16, ptr %6, align 8, !tbaa !22
  ret void
}

end_hunk_3
begin_hunk_4_@_ZN8facebook5velox9functions9aggregate15CorrAccumulator5mergeElddddd:bb.a

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %5, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %6, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %0, align 8, !tbaa !16
  store double %2, ptr %i.f, align 8, !tbaa !20
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox9functions9aggregate15CorrAccumulator5mergeElddddd:bb.a
  %i.ai = fmul <4 x double> %i.af, %i.ah          ; 2 uses
  %i.aj = fmul double %i.ab, %i.w
  %i.ak = fadd double %6, %i.aj
  %i.al = load double, ptr %i.p, align 8, !tbaa !46
  %i.am = fadd double %i.al, %i.ak
  store double %i.am, ptr %i.p, align 8, !tbaa !46
  %i.an = load <2 x double>, ptr %i.q, align 8, !tbaa !22
  %i.ao = insertelement <4 x double> poison, double %i.k, i64 0
  %i.ap = insertelement <4 x double> %i.ao, double %i.t, i64 1
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox9functions9aggregate21CorrIntermediateInput9mergeIntoERNS2_15CorrAccumulatorEi:bb.a

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.ac, ptr %i.am, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.ai, ptr %i.an, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %1, align 8, !tbaa !16
  store double %i.k, ptr %i.ao, align 8, !tbaa !20
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox9functions9aggregate21CorrIntermediateInput9mergeIntoERNS2_15CorrAccumulatorEi:bb.a
  %i.bb = fsub double %i.ba, %i.q
  %i.bc = tail call noundef double @pow(double noundef %i.bb, double noundef 2.000000e+00) #12, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !46
  %i.bf = fsub double %i.k, %i.aw                 ; 2 uses
  %i.bg = fsub double %i.q, %i.ba                 ; 2 uses
  %i.bh = fmul double %i.bf, %i.bg
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox9functions9aggregate21CorrIntermediateInput9mergeIntoERNS2_15CorrAccumulatorEi:bb.a
  %i.bn = fmul double %i.bl, %i.bc
  %i.bo = fadd double %i.ai, %i.bn
  %i.bp = fadd double %i.be, %i.bo
  store double %i.bp, ptr %i.bd, align 8, !tbaa !46
  %i.bq = fmul double %i.bl, %i.ay
  %i.br = fdiv double %i.bm, %i.at
  %i.bs = insertelement <2 x double> poison, double %i.w, i64 0
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox9functions9aggregate22CorrIntermediateResult3setEiRKNS2_15CorrAccumulatorE:bb.a
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.c
  store double %i.p, ptr %i.s, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load double, ptr %i.t, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.c
  store double %i.u, ptr %i.x, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load double, ptr %i.y, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.c
end_hunk_9
begin_hunk_10_@pow
!41 = !{!37, !39, i64 8}
!42 = !{!37, !39, i64 16}
!43 = !{!37, !39, i64 24}
!44 = !{!45, !18, i64 32}
!45 = !{!"_ZTSN8facebook5velox9functions9aggregate15CorrAccumulatorE", !17, i64 0, !18, i64 32, !18, i64 40}
!46 = !{!45, !18, i64 40}
!47 = !{!48, !30, i64 32}
!48 = !{!"_ZTSN8facebook5velox9functions9aggregate21CorrIntermediateInputE", !28, i64 0, !30, i64 32, !30, i64 40}
!49 = !{!48, !30, i64 40}
end_hunk_10
