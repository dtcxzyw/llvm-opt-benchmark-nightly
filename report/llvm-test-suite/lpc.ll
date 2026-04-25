inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@Gsm_LPC_Analysis:vector.ph

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.017.1.i = phi i16 [ %i.ajs, %bb.m ], [ %i.ajr, %bb.l ], [ %i.ajq, %bb.k ] ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aju = load i16, ptr %i.ajt, align 2, !tbaa !8 ; 4 uses
  %i.ajv = icmp slt i16 %i.aju, 0                 ; 2 uses
  %i.ajw = icmp eq i16 %i.aju, -32768
end_hunk_0
begin_hunk_1_@Gsm_LPC_Analysis:vector.ph

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.017.5.i = phi i16 [ %i.als, %bb.ag ], [ %i.alr, %bb.af ], [ %i.alq, %bb.ae ] ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.alu = load i16, ptr %i.alt, align 2, !tbaa !8 ; 4 uses
  %i.alv = icmp slt i16 %i.alu, 0                 ; 2 uses
  %i.alw = icmp eq i16 %i.alu, -32768
end_hunk_1
begin_hunk_2_@Gsm_LPC_Analysis:vector.ph
  %i.ane = sext i16 %i.anc to i32
  %tr.sh.diff112.i = mul nsw i32 %i.and, 40960
  %tr.sh.diff.i = mul nsw i32 %i.ane, 40960
  %3 = select i1 %i.ami, i16 %i.ana, i16 %.017.7.i
  %4 = select i1 %i.alv, i16 %i.amt, i16 %.017.6.i
  %5 = sext i16 %3 to i64
  %6 = sext i16 %4 to i64
  %7 = mul nsw i64 %5, 77618648973312
  %8 = mul nsw i64 %6, 73306501808128
  %9 = insertelement <2 x i64> poison, i64 %8, i64 0
  %10 = insertelement <2 x i64> %9, i64 %7, i64 1
  %11 = add nsw <2 x i64> %10, <i64 -95982967058333696, i64 -322007373356990464>
  %12 = lshr exact <2 x i64> %11, splat (i64 32)
  %13 = trunc nuw <2 x i64> %12 to <2 x i32>
  %i.anf = select i1 %i.ali, i16 %i.amu, i16 %.017.5.i
  %i.ang = select i1 %i.akv, i16 %i.amv, i16 %.017.4.i
  %i.anh = select i1 %i.aki, i16 %i.amw, i16 %.017.3.i
end_hunk_2
begin_hunk_3_@Gsm_LPC_Analysis:vector.ph
  %i.anv = add nsw <4 x i64> %i.anu, <i64 576460752303423488, i64 -720575940379279360, i64 26458647810801664, i64 -504403158265495552>
  %i.anw = lshr exact <4 x i64> %i.anv, splat (i64 32)
  %i.anx = trunc nuw <4 x i64> %i.anw to <4 x i32>
  %14 = insertelement <8 x i32> poison, i32 %tr.sh.diff.i, i64 0
  %15 = insertelement <8 x i32> %14, i32 %tr.sh.diff112.i, i64 1
  %16 = shufflevector <4 x i32> %i.anx, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <8 x i32> %15, <8 x i32> %16, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %18 = shufflevector <2 x i32> %13, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = shufflevector <8 x i32> %17, <8 x i32> %18, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %20 = add <8 x i32> %19, splat (i32 16777216)
  %21 = ashr <8 x i32> %20, splat (i32 25)        ; 5 uses
  %22 = icmp sgt <8 x i32> %21, <i32 31, i32 31, i32 15, i32 15, i32 7, i32 7, i32 3, i32 3>
  %23 = extractelement <8 x i32> %21, i64 3
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 -16)
  %25 = extractelement <8 x i32> %21, i64 2
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 -16)
  %27 = trunc nsw <8 x i32> %21 to <8 x i16>
  %28 = trunc i32 %26 to i16
  %29 = insertelement <8 x i16> %27, i16 %28, i64 2
  %30 = trunc i32 %24 to i16
  %31 = insertelement <8 x i16> %29, i16 %30, i64 3
  %32 = shufflevector <8 x i32> %21, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %33 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %32, <4 x i32> <i32 -8, i32 -8, i32 -4, i32 -4>)
  %34 = trunc <4 x i32> %33 to <4 x i16>
  %35 = shufflevector <4 x i16> %34, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %36 = shufflevector <8 x i16> %31, <8 x i16> %35, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %37 = add nsw <8 x i16> %36, <i16 32, i16 32, i16 16, i16 16, i16 8, i16 8, i16 4, i16 4>
  %38 = select <8 x i1> %22, <8 x i16> <i16 63, i16 63, i16 31, i16 31, i16 15, i16 15, i16 7, i16 7>, <8 x i16> %37
  store <8 x i16> %38, ptr %2, align 2, !tbaa !8
  ret void
}

end_hunk_3
begin_hunk_4_@llvm.sadd.sat.v8i16
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_4
