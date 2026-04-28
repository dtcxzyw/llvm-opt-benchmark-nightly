inline.NumInlined: 7
inline.NumDeleted: 5
begin_hunk_0_@Gsm_RPE_Encoding:bb.a
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jz, i64 42
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !8  ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !8  ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jz, i64 54
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !8  ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jz, i64 60
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !8  ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jz, i64 66
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !8  ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jz, i64 72
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !8  ; 4 uses
  store i16 %.2.i, ptr %3, align 2, !tbaa !8
  %i.kz = insertelement <8 x i16> poison, i16 %i.ka, i64 0
  %i.la = insertelement <8 x i16> %i.kz, i16 %i.kc, i64 1
end_hunk_0
begin_hunk_1_@Gsm_RPE_Encoding:bb.a
  %i.ld = insertelement <8 x i16> %i.lc, i16 %i.ki, i64 4
  %i.le = insertelement <8 x i16> %i.ld, i16 %i.kk, i64 5
  %i.lf = insertelement <8 x i16> %i.le, i16 %i.km, i64 6
  %i.lg = insertelement <8 x i16> %i.lf, i16 %i.ko, i64 7 ; 3 uses
  %i.lh = icmp slt <8 x i16> %i.lg, zeroinitializer
  %5 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %i.lg)
  %i.li = select <8 x i1> %i.lh, <8 x i16> %5, <8 x i16> %i.lg ; 2 uses
  %6 = insertelement <4 x i16> poison, i16 %i.kq, i64 0
  %7 = insertelement <4 x i16> %6, i16 %i.ks, i64 1
  %8 = insertelement <4 x i16> %7, i16 %i.ku, i64 2
  %9 = insertelement <4 x i16> %8, i16 %i.kw, i64 3 ; 3 uses
  %10 = icmp slt <4 x i16> %9, zeroinitializer
  %11 = tail call <4 x i16> @llvm.ssub.sat.v4i16(<4 x i16> zeroinitializer, <4 x i16> %9)
  %12 = select <4 x i1> %10, <4 x i16> %11, <4 x i16> %9
  %13 = shufflevector <8 x i16> %i.li, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %13, <4 x i16> %12)
  %15 = shufflevector <4 x i16> %14, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = shufflevector <8 x i16> %15, <8 x i16> %i.li, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.lj = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %16)
  %i.lk = icmp slt i16 %i.ky, 0
  %17 = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.ky)
  %i.ll = select i1 %i.lk, i16 %17, i16 %i.ky
  %.138.11.i = tail call i16 @llvm.smax.i16(i16 %i.lj, i16 %i.ll) ; 4 uses
  %.138.12.i = tail call i16 @llvm.smax.i16(i16 %.138.11.i, i16 0)
  %i.lm = insertelement <4 x i16> poison, i16 %.138.11.i, i64 0
  %i.ln = shufflevector <4 x i16> %i.lm, <4 x i16> poison, <4 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@llvm.smax.i64
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_2
begin_hunk_3_@llvm.ctpop.i4
declare i4 @llvm.ctpop.i4(i4) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.ssub.sat.v4i16(<4 x i16>, <4 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v8i16(<8 x i16>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
