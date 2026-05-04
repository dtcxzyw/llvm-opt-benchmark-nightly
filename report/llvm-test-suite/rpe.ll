inline.NumInlined: 7
inline.NumDeleted: 5
begin_hunk_0_@Gsm_RPE_Encoding:bb.a
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jz, i64 42
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !8  ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !8  ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jz, i64 54
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !8  ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jz, i64 60
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !8  ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jz, i64 66
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !8  ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jz, i64 72
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !8  ; 5 uses
  store i16 %.2.i, ptr %3, align 2, !tbaa !8
  %i.kz = insertelement <8 x i16> poison, i16 %i.ka, i64 0
  %i.la = insertelement <8 x i16> %i.kz, i16 %i.kc, i64 1
end_hunk_0
begin_hunk_1_@Gsm_RPE_Encoding:bb.a
  %i.ld = insertelement <8 x i16> %i.lc, i16 %i.ki, i64 4
  %i.le = insertelement <8 x i16> %i.ld, i16 %i.kk, i64 5
  %i.lf = insertelement <8 x i16> %i.le, i16 %i.km, i64 6
  %i.lg = insertelement <8 x i16> %i.lf, i16 %i.ko, i64 7 ; 4 uses
  %i.lh = icmp slt <8 x i16> %i.lg, zeroinitializer
  %5 = icmp eq <8 x i16> %i.lg, splat (i16 -32768)
  %6 = sub <8 x i16> zeroinitializer, %i.lg
  %7 = select <8 x i1> %5, <8 x i16> splat (i16 32767), <8 x i16> %6
  %i.li = select <8 x i1> %i.lh, <8 x i16> %7, <8 x i16> %i.lg
  %8 = icmp slt i16 %i.kq, 0
  %9 = icmp eq i16 %i.kq, -32768
  %10 = sub i16 0, %i.kq
  %11 = select i1 %9, i16 32767, i16 %10
  %12 = select i1 %8, i16 %11, i16 %i.kq
  %13 = icmp slt i16 %i.ks, 0
  %14 = icmp eq i16 %i.ks, -32768
  %15 = sub i16 0, %i.ks
  %16 = select i1 %14, i16 32767, i16 %15
  %17 = select i1 %13, i16 %16, i16 %i.ks
  %18 = icmp slt i16 %i.ku, 0
  %19 = icmp eq i16 %i.ku, -32768
  %20 = sub i16 0, %i.ku
  %21 = select i1 %19, i16 32767, i16 %20
  %22 = select i1 %18, i16 %21, i16 %i.ku
  %23 = icmp slt i16 %i.kw, 0
  %24 = icmp eq i16 %i.kw, -32768
  %25 = sub i16 0, %i.kw
  %26 = select i1 %24, i16 32767, i16 %25
  %27 = select i1 %23, i16 %26, i16 %i.kw
  %i.lj = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %i.li)
  %28 = tail call i16 @llvm.smax.i16(i16 %i.lj, i16 %12)
  %29 = tail call i16 @llvm.smax.i16(i16 %17, i16 %22)
  %30 = tail call i16 @llvm.smax.i16(i16 %28, i16 %29)
  %31 = tail call i16 @llvm.smax.i16(i16 %30, i16 %27)
  %i.lk = icmp slt i16 %i.ky, 0
  %32 = icmp eq i16 %i.ky, -32768
  %33 = sub i16 0, %i.ky
  %34 = select i1 %32, i16 32767, i16 %33
  %i.ll = select i1 %i.lk, i16 %34, i16 %i.ky
  %.138.11.i = tail call i16 @llvm.smax.i16(i16 %31, i16 %i.ll) ; 4 uses
  %.138.12.i = tail call i16 @llvm.smax.i16(i16 %.138.11.i, i16 0)
  %i.lm = insertelement <4 x i16> poison, i16 %.138.11.i, i64 0
  %i.ln = shufflevector <4 x i16> %i.lm, <4 x i16> poison, <4 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@llvm.smax.i64
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_2
begin_hunk_3_@llvm.ctpop.i4
declare i4 @llvm.ctpop.i4(i4) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v8i16(<8 x i16>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
