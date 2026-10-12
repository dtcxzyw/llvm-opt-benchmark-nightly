Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/lpc?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Gsm_LPC_Analysis:vector.ph
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.aih = add nsw i16 %i.aic, -11059
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.aii = ashr i16 %i.aic, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.017.2.i = phi i16 [ %i.aii, %bb.q ], [ %i.aih, %bb.p ], [ %i.aig, %bb.o ] ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.aik = load i16, ptr %i.aij, align 2, !tbaa !12 ; 3 uses
  %i.ail = icmp slt i16 %i.aik, 0                 ; 2 uses
  %i.aim = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.aik)
  %i.ain = select i1 %i.ail, i16 %i.aim, i16 %i.aik ; 5 uses
  %i.aio = icmp slt i16 %i.ain, 22118
  br i1 %i.aio, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aip = icmp samesign ult i16 %i.ain, 31130
  br i1 %i.aip, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aiq = shl i16 %i.ain, 2
  %i.air = add nsw i16 %i.aiq, 26624
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ais = add nsw i16 %i.ain, -11059
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.ait = ashr i16 %i.ain, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.017.3.i = phi i16 [ %i.ait, %bb.v ], [ %i.ais, %bb.u ], [ %i.air, %bb.t ] ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aiv = load i16, ptr %i.aiu, align 2, !tbaa !12 ; 3 uses
  %i.aiw = icmp slt i16 %i.aiv, 0                 ; 2 uses
  %i.aix = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.aiv)
  %i.aiy = select i1 %i.aiw, i16 %i.aix, i16 %i.aiv ; 5 uses
  %i.aiz = icmp slt i16 %i.aiy, 22118
  br i1 %i.aiz, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aja = icmp samesign ult i16 %i.aiy, 31130
  br i1 %i.aja, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ajb = shl i16 %i.aiy, 2
  %i.ajc = add nsw i16 %i.ajb, 26624
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.ajd = add nsw i16 %i.aiy, -11059
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.aje = ashr i16 %i.aiy, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.017.4.i = phi i16 [ %i.aje, %bb.aa ], [ %i.ajd, %bb.z ], [ %i.ajc, %bb.y ] ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ajg = load i16, ptr %i.ajf, align 2, !tbaa !12 ; 3 uses
  %i.ajh = icmp slt i16 %i.ajg, 0                 ; 2 uses
  %i.aji = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.ajg)
  %i.ajj = select i1 %i.ajh, i16 %i.aji, i16 %i.ajg ; 5 uses
  %i.ajk = icmp slt i16 %i.ajj, 22118
  br i1 %i.ajk, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ajl = icmp samesign ult i16 %i.ajj, 31130
  br i1 %i.ajl, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ajm = shl i16 %i.ajj, 2
  %i.ajn = add nsw i16 %i.ajm, 26624
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.ajo = add nsw i16 %i.ajj, -11059
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.ajp = ashr i16 %i.ajj, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.017.5.i = phi i16 [ %i.ajp, %bb.af ], [ %i.ajo, %bb.ae ], [ %i.ajn, %bb.ad ] ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ajr = load i16, ptr %i.ajq, align 2, !tbaa !12 ; 3 uses
  %i.ajs = icmp slt i16 %i.ajr, 0                 ; 2 uses
  %i.ajt = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.ajr)
  %i.aju = select i1 %i.ajs, i16 %i.ajt, i16 %i.ajr ; 5 uses
  %i.ajv = icmp slt i16 %i.aju, 22118
  br i1 %i.ajv, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ajw = icmp samesign ult i16 %i.aju, 31130
  br i1 %i.ajw, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ajx = shl i16 %i.aju, 2
  %i.ajy = add nsw i16 %i.ajx, 26624
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.ajz = add nsw i16 %i.aju, -11059
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.aka = ashr i16 %i.aju, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.017.6.i = phi i16 [ %i.aka, %bb.ak ], [ %i.ajz, %bb.aj ], [ %i.ajy, %bb.ai ] ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.akc = load i16, ptr %i.akb, align 2, !tbaa !12 ; 3 uses
  %i.akd = icmp slt i16 %i.akc, 0                 ; 2 uses
  %i.ake = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.akc)
  %i.akf = select i1 %i.akd, i16 %i.ake, i16 %i.akc ; 5 uses
  %i.akg = icmp slt i16 %i.akf, 22118
  br i1 %i.akg, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.akh = icmp samesign ult i16 %i.akf, 31130
  br i1 %i.akh, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.aki = shl i16 %i.akf, 2
  %i.akj = add nsw i16 %i.aki, 26624
  br label %Transformation_to_Log_Area_Ratios.exit

bb.ao:                                            ; preds = %bb.am
  %i.akk = add nsw i16 %i.akf, -11059
  br label %Transformation_to_Log_Area_Ratios.exit

bb.ap:                                            ; preds = %bb.al
  %i.akl = ashr i16 %i.akf, 1
  br label %Transformation_to_Log_Area_Ratios.exit

Transformation_to_Log_Area_Ratios.exit:           ; preds = %bb.an, %bb.ao, %bb.ap
  %.017.7.i = phi i16 [ %i.akl, %bb.ap ], [ %i.akk, %bb.ao ], [ %i.akj, %bb.an ] ; 2 uses
  %i.akm = sub nsw i16 0, %.017.6.i
  %i.akn = sub nsw i16 0, %.017.5.i
  %i.ako = sub nsw i16 0, %.017.4.i
  %i.akp = sub nsw i16 0, %.017.3.i
  %i.akq = sub nsw i16 0, %.017.2.i
  %i.akr = sub nsw i16 0, %.017.1.i
  %i.aks = sub nsw i16 0, %.017.i
  %i.akt = sub nsw i16 0, %.017.7.i
  %i.aku = select i1 %i.ahp, i16 %i.akr, i16 %.017.1.i
  %i.akv = select i1 %i.ahe, i16 %i.aks, i16 %.017.i
  %i.akw = sext i16 %i.akv to i32
  %tr.sh.diff.i = mul nsw i32 %i.akw, 40960
  %i.akx = sext i16 %i.aku to i32
  %tr.sh.diff112.i = mul nsw i32 %i.akx, 40960
  %i.aky = select i1 %i.ajh, i16 %i.akn, i16 %.017.5.i
  %i.akz = select i1 %i.aiw, i16 %i.ako, i16 %.017.4.i
  %i.ala = select i1 %i.ail, i16 %i.akp, i16 %.017.3.i
  %i.alb = select i1 %i.aia, i16 %i.akq, i16 %.017.2.i
  %i.alc = sext i16 %i.alb to i64
  %i.ald = mul nsw i64 %i.alc, 175921860444160
  %i.ale = sext i16 %i.ala to i64
  %i.alf = mul nsw i64 %i.ale, 175921860444160
  %i.alg = sext i16 %i.akz to i64
  %i.alh = mul nsw i64 %i.alg, 119949846642688
  %i.ali = sext i16 %i.aky to i64
  %i.alj = mul nsw i64 %i.ali, 131941395333120
  %i.alk = insertelement <4 x i64> poison, i64 %i.ald, i64 0
  %i.all = insertelement <4 x i64> %i.alk, i64 %i.alf, i64 1
  %i.alm = insertelement <4 x i64> %i.all, i64 %i.alh, i64 2
  %i.aln = insertelement <4 x i64> %i.alm, i64 %i.alj, i64 3
  %i.alo = add nsw <4 x i64> %i.aln, <i64 576460752303423488, i64 -720575940379279360, i64 26458647810801664, i64 -504403158265495552>
  %i.alp = lshr exact <4 x i64> %i.alo, splat (i64 32)
  %i.alq = trunc nuw <4 x i64> %i.alp to <4 x i32>
  %i.alr = select i1 %i.ajs, i16 %i.akm, i16 %.017.6.i
  %i.als = select i1 %i.akd, i16 %i.akt, i16 %.017.7.i
  %i.alt = sext i16 %i.alr to i64
  %i.alu = mul nsw i64 %i.alt, 73306501808128
  %i.alv = sext i16 %i.als to i64
  %i.alw = mul nsw i64 %i.alv, 77618648973312
  %i.alx = insertelement <2 x i64> poison, i64 %i.alu, i64 0
  %i.aly = insertelement <2 x i64> %i.alx, i64 %i.alw, i64 1
  %i.alz = add nsw <2 x i64> %i.aly, <i64 -95982967058333696, i64 -322007373356990464>
  %i.ama = lshr exact <2 x i64> %i.alz, splat (i64 32)
  %i.amb = trunc nuw <2 x i64> %i.ama to <2 x i32>
  %i.amc = insertelement <8 x i32> poison, i32 %tr.sh.diff.i, i64 0
  %i.amd = insertelement <8 x i32> %i.amc, i32 %tr.sh.diff112.i, i64 1
  %i.ame = shufflevector <4 x i32> %i.alq, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amf = shufflevector <8 x i32> %i.amd, <8 x i32> %i.ame, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.amg = shufflevector <2 x i32> %i.amb, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amh = shufflevector <8 x i32> %i.amf, <8 x i32> %i.amg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ami = add <8 x i32> %i.amh, splat (i32 16777216)
  %i.amj = ashr <8 x i32> %i.ami, splat (i32 25)  ; 2 uses
  %i.amk = icmp sgt <8 x i32> %i.amj, <i32 31, i32 31, i32 15, i32 15, i32 7, i32 7, i32 3, i32 3>
  %i.aml = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.amj, <8 x i32> <i32 -2147483648, i32 -2147483648, i32 -16, i32 -16, i32 -8, i32 -8, i32 -4, i32 -4>)
  %i.amm = trunc <8 x i32> %i.aml to <8 x i16>
  %i.amn = add nsw <8 x i16> %i.amm, <i16 32, i16 32, i16 16, i16 16, i16 8, i16 8, i16 4, i16 4>
  %i.amo = select <8 x i1> %i.amk, <8 x i16> <i16 63, i16 63, i16 31, i16 31, i16 15, i16 15, i16 7, i16 7>, <8 x i16> %i.amn
  store <8 x i16> %i.amo, ptr %2, align 2, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare signext i16 @gsm_norm(i64 noundef) local_unnamed_addr #2

declare signext i16 @gsm_div(i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !13}
!9 = distinct !{!9, !13, !14, !15}
!10 = distinct !{!10, !13, !15, !14}
!11 = !{!"short", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
