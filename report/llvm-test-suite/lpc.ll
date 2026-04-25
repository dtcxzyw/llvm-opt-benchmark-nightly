inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@Gsm_LPC_Analysis:vector.ph

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.017.1.i = phi i16 [ %i.ajs, %bb.m ], [ %i.ajr, %bb.l ], [ %i.ajq, %bb.k ] ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aju = load i16, ptr %i.ajt, align 2, !tbaa !8 ; 4 uses
  %i.ajv = icmp slt i16 %i.aju, 0                 ; 2 uses
  %i.ajw = icmp eq i16 %i.aju, -32768
end_hunk_0
begin_hunk_1_@Gsm_LPC_Analysis:vector.ph

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.017.5.i = phi i16 [ %i.als, %bb.ag ], [ %i.alr, %bb.af ], [ %i.alq, %bb.ae ] ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.alu = load i16, ptr %i.alt, align 2, !tbaa !8 ; 4 uses
  %i.alv = icmp slt i16 %i.alu, 0                 ; 2 uses
  %i.alw = icmp eq i16 %i.alu, -32768
end_hunk_1
begin_hunk_2_@Gsm_LPC_Analysis:vector.ph
  %i.ane = sext i16 %i.anc to i32
  %tr.sh.diff112.i = mul nsw i32 %i.and, 40960
  %tr.sh.diff.i = mul nsw i32 %i.ane, 40960
  %3 = insertelement <2 x i32> poison, i32 %tr.sh.diff.i, i64 0
  %4 = insertelement <2 x i32> %3, i32 %tr.sh.diff112.i, i64 1
  %5 = add nsw <2 x i32> %4, splat (i32 16777216)
  %6 = ashr <2 x i32> %5, splat (i32 25)          ; 2 uses
  %7 = icmp sgt <2 x i32> %6, splat (i32 31)
  %8 = trunc nsw <2 x i32> %6 to <2 x i16>
  %9 = add nsw <2 x i16> %8, splat (i16 32)
  %10 = select <2 x i1> %7, <2 x i16> splat (i16 63), <2 x i16> %9
  store <2 x i16> %10, ptr %2, align 2, !tbaa !8
  %i.anf = select i1 %i.ali, i16 %i.amu, i16 %.017.5.i
  %i.ang = select i1 %i.akv, i16 %i.amv, i16 %.017.4.i
  %i.anh = select i1 %i.aki, i16 %i.amw, i16 %.017.3.i
end_hunk_2
begin_hunk_3_@Gsm_LPC_Analysis:vector.ph
  %i.anv = add nsw <4 x i64> %i.anu, <i64 576460752303423488, i64 -720575940379279360, i64 26458647810801664, i64 -504403158265495552>
  %i.anw = lshr exact <4 x i64> %i.anv, splat (i64 32)
  %i.anx = trunc nuw <4 x i64> %i.anw to <4 x i32>
  %11 = add <4 x i32> %i.anx, splat (i32 16777216)
  %12 = ashr <4 x i32> %11, splat (i32 25)        ; 2 uses
  %13 = icmp sgt <4 x i32> %12, <i32 15, i32 15, i32 7, i32 7>
  %14 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %12, <4 x i32> <i32 -16, i32 -16, i32 -8, i32 -8>)
  %15 = trunc <4 x i32> %14 to <4 x i16>
  %16 = add nsw <4 x i16> %15, <i16 16, i16 16, i16 8, i16 8>
  %17 = select <4 x i1> %13, <4 x i16> <i16 31, i16 31, i16 15, i16 15>, <4 x i16> %16
  store <4 x i16> %17, ptr %i.ajt, align 2, !tbaa !8
  %18 = select i1 %i.ami, i16 %i.ana, i16 %.017.7.i
  %19 = select i1 %i.alv, i16 %i.amt, i16 %.017.6.i
  %20 = sext i16 %18 to i64
  %21 = sext i16 %19 to i64
  %22 = mul nsw i64 %20, 77618648973312
  %23 = mul nsw i64 %21, 73306501808128
  %24 = insertelement <2 x i64> poison, i64 %23, i64 0
  %25 = insertelement <2 x i64> %24, i64 %22, i64 1
  %26 = add nsw <2 x i64> %25, <i64 -95982967058333696, i64 -322007373356990464>
  %27 = lshr exact <2 x i64> %26, splat (i64 32)
  %28 = trunc nuw <2 x i64> %27 to <2 x i32>
  %29 = add <2 x i32> %28, splat (i32 16777216)
  %30 = ashr <2 x i32> %29, splat (i32 25)        ; 2 uses
  %31 = icmp sgt <2 x i32> %30, splat (i32 3)
  %32 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %30, <2 x i32> splat (i32 -4))
  %33 = trunc <2 x i32> %32 to <2 x i16>
  %34 = add nsw <2 x i16> %33, splat (i16 4)
  %35 = select <2 x i1> %31, <2 x i16> splat (i16 7), <2 x i16> %34
  store <2 x i16> %35, ptr %i.alt, align 2, !tbaa !8
  ret void
}

end_hunk_3
begin_hunk_4_@llvm.sadd.sat.v8i16
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_4
