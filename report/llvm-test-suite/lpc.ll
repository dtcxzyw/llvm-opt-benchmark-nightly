inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Gsm_LPC_Analysis:vector.ph
  %i.aif = shl i16 %i.aic, 2
  %i.aig = add nsw i16 %i.aif, 26624
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.aih = add nsw i16 %i.aic, -11059
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.aii = ashr i16 %i.aic, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.017.2.i = phi i16 [ %i.aii, %bb.r ], [ %i.aih, %bb.q ], [ %i.aig, %bb.p ] ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.aik = load i16, ptr %i.aij, align 2, !tbaa !8 ; 3 uses
  %i.ail = icmp slt i16 %i.aik, 0                 ; 2 uses
  %i.aim = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.aik)
  %i.ain = select i1 %i.ail, i16 %i.aim, i16 %i.aik ; 5 uses
  %i.aio = icmp slt i16 %i.ain, 22118
  br i1 %i.aio, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aip = icmp samesign ult i16 %i.ain, 31130
  br i1 %i.aip, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aiq = shl i16 %i.ain, 2
  %i.air = add nsw i16 %i.aiq, 26624
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ais = add nsw i16 %i.ain, -11059
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.ait = ashr i16 %i.ain, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.017.3.i = phi i16 [ %i.ait, %bb.w ], [ %i.ais, %bb.v ], [ %i.air, %bb.u ] ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aiv = load i16, ptr %i.aiu, align 2, !tbaa !8 ; 3 uses
  %i.aiw = icmp slt i16 %i.aiv, 0                 ; 2 uses
  %i.aix = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.aiv)
  %i.aiy = select i1 %i.aiw, i16 %i.aix, i16 %i.aiv ; 5 uses
  %i.aiz = icmp slt i16 %i.aiy, 22118
  br i1 %i.aiz, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aja = icmp samesign ult i16 %i.aiy, 31130
  br i1 %i.aja, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ajb = shl i16 %i.aiy, 2
  %i.ajc = add nsw i16 %i.ajb, 26624
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ajd = add nsw i16 %i.aiy, -11059
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.aje = ashr i16 %i.aiy, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.017.4.i = phi i16 [ %i.aje, %bb.ab ], [ %i.ajd, %bb.aa ], [ %i.ajc, %bb.z ] ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ajg = load i16, ptr %i.ajf, align 2, !tbaa !8 ; 3 uses
  %i.ajh = icmp slt i16 %i.ajg, 0                 ; 2 uses
  %i.aji = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.ajg)
  %i.ajj = select i1 %i.ajh, i16 %i.aji, i16 %i.ajg ; 5 uses
  %i.ajk = icmp slt i16 %i.ajj, 22118
  br i1 %i.ajk, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ajl = icmp samesign ult i16 %i.ajj, 31130
  br i1 %i.ajl, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ajm = shl i16 %i.ajj, 2
  %i.ajn = add nsw i16 %i.ajm, 26624
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.ajo = add nsw i16 %i.ajj, -11059
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.ajp = ashr i16 %i.ajj, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.017.5.i = phi i16 [ %i.ajp, %bb.ag ], [ %i.ajo, %bb.af ], [ %i.ajn, %bb.ae ] ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ajr = load i16, ptr %i.ajq, align 2, !tbaa !8 ; 3 uses
  %i.ajs = icmp slt i16 %i.ajr, 0                 ; 2 uses
  %i.ajt = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.ajr)
  %i.aju = select i1 %i.ajs, i16 %i.ajt, i16 %i.ajr ; 5 uses
  %i.ajv = icmp slt i16 %i.aju, 22118
  br i1 %i.ajv, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ajw = icmp samesign ult i16 %i.aju, 31130
  br i1 %i.ajw, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ajx = shl i16 %i.aju, 2
  %i.ajy = add nsw i16 %i.ajx, 26624
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.ajz = add nsw i16 %i.aju, -11059
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.aka = ashr i16 %i.aju, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.017.6.i = phi i16 [ %i.aka, %bb.al ], [ %i.ajz, %bb.ak ], [ %i.ajy, %bb.aj ] ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.akc = load i16, ptr %i.akb, align 2, !tbaa !8 ; 3 uses
  %i.akd = icmp slt i16 %i.akc, 0                 ; 2 uses
  %i.ake = tail call i16 @llvm.ssub.sat.i16(i16 0, i16 %i.akc)
  %i.akf = select i1 %i.akd, i16 %i.ake, i16 %i.akc ; 5 uses
  %i.akg = icmp slt i16 %i.akf, 22118
  br i1 %i.akg, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.akh = icmp samesign ult i16 %i.akf, 31130
  br i1 %i.akh, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.aki = shl i16 %i.akf, 2
  %i.akj = add nsw i16 %i.aki, 26624
  br label %Transformation_to_Log_Area_Ratios.exit

bb.ap:                                            ; preds = %bb.an
  %i.akk = add nsw i16 %i.akf, -11059
  br label %Transformation_to_Log_Area_Ratios.exit

bb.aq:                                            ; preds = %bb.am
  %i.akl = ashr i16 %i.akf, 1
  br label %Transformation_to_Log_Area_Ratios.exit

Transformation_to_Log_Area_Ratios.exit:           ; preds = %bb.ao, %bb.ap, %bb.aq
  %.017.7.i = phi i16 [ %i.akl, %bb.aq ], [ %i.akk, %bb.ap ], [ %i.akj, %bb.ao ] ; 2 uses
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
  %i.akw = sext i16 %i.aku to i32
  %i.akx = sext i16 %i.akv to i32
  %tr.sh.diff112.i = mul nsw i32 %i.akw, 40960
  %tr.sh.diff.i = mul nsw i32 %i.akx, 40960
  %i.aky = select i1 %i.akd, i16 %i.akt, i16 %.017.7.i
  %i.akz = select i1 %i.ajs, i16 %i.akm, i16 %.017.6.i
  %i.ala = sext i16 %i.aky to i64
  %i.alb = sext i16 %i.akz to i64
  %i.alc = mul nsw i64 %i.ala, 77618648973312
  %i.ald = mul nsw i64 %i.alb, 73306501808128
  %i.ale = insertelement <2 x i64> poison, i64 %i.ald, i64 0
  %i.alf = insertelement <2 x i64> %i.ale, i64 %i.alc, i64 1
  %i.alg = add nsw <2 x i64> %i.alf, <i64 -95982967058333696, i64 -322007373356990464>
  %i.alh = lshr exact <2 x i64> %i.alg, splat (i64 32)
  %i.ali = trunc nuw <2 x i64> %i.alh to <2 x i32>
  %i.alj = select i1 %i.ajh, i16 %i.akn, i16 %.017.5.i
  %i.alk = select i1 %i.aiw, i16 %i.ako, i16 %.017.4.i
  %i.all = select i1 %i.ail, i16 %i.akp, i16 %.017.3.i
  %i.alm = select i1 %i.aia, i16 %i.akq, i16 %.017.2.i
  %i.aln = sext i16 %i.alj to i64
  %i.alo = sext i16 %i.alk to i64
  %i.alp = sext i16 %i.all to i64
  %i.alq = sext i16 %i.alm to i64
  %i.alr = mul nsw i64 %i.aln, 131941395333120
  %i.als = mul nsw i64 %i.alo, 119949846642688
  %i.alt = mul nsw i64 %i.alp, 175921860444160
  %i.alu = mul nsw i64 %i.alq, 175921860444160
  %i.alv = insertelement <4 x i64> poison, i64 %i.alu, i64 0
  %i.alw = insertelement <4 x i64> %i.alv, i64 %i.alt, i64 1
  %i.alx = insertelement <4 x i64> %i.alw, i64 %i.als, i64 2
  %i.aly = insertelement <4 x i64> %i.alx, i64 %i.alr, i64 3
  %i.alz = add nsw <4 x i64> %i.aly, <i64 576460752303423488, i64 -720575940379279360, i64 26458647810801664, i64 -504403158265495552>
  %i.ama = lshr exact <4 x i64> %i.alz, splat (i64 32)
  %i.amb = trunc nuw <4 x i64> %i.ama to <4 x i32>
  %i.amc = insertelement <8 x i32> poison, i32 %tr.sh.diff.i, i64 0
  %i.amd = insertelement <8 x i32> %i.amc, i32 %tr.sh.diff112.i, i64 1
  %i.ame = shufflevector <4 x i32> %i.amb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amf = shufflevector <8 x i32> %i.amd, <8 x i32> %i.ame, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.amg = shufflevector <2 x i32> %i.ali, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amh = shufflevector <8 x i32> %i.amf, <8 x i32> %i.amg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ami = add <8 x i32> %i.amh, splat (i32 16777216)
  %i.amj = ashr <8 x i32> %i.ami, splat (i32 25)  ; 5 uses
  %i.amk = icmp sgt <8 x i32> %i.amj, <i32 31, i32 31, i32 15, i32 15, i32 7, i32 7, i32 3, i32 3>
  %3 = extractelement <8 x i32> %i.amj, i64 3
  %4 = tail call i32 @llvm.smax.i32(i32 %3, i32 -16)
  %5 = extractelement <8 x i32> %i.amj, i64 2
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -16)
  %i.aml = trunc nsw <8 x i32> %i.amj to <8 x i16>
  %7 = trunc i32 %6 to i16
  %8 = insertelement <8 x i16> %i.aml, i16 %7, i64 2
  %9 = trunc i32 %4 to i16
  %10 = insertelement <8 x i16> %8, i16 %9, i64 3
  %11 = shufflevector <8 x i32> %i.amj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %12 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %11, <4 x i32> <i32 -8, i32 -8, i32 -4, i32 -4>)
  %13 = trunc <4 x i32> %12 to <4 x i16>
  %14 = shufflevector <4 x i16> %13, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <8 x i16> %10, <8 x i16> %14, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.amm = add nsw <8 x i16> %15, <i16 32, i16 32, i16 16, i16 16, i16 8, i16 8, i16 4, i16 4>
  %i.amn = select <8 x i1> %i.amk, <8 x i16> <i16 63, i16 63, i16 31, i16 31, i16 15, i16 15, i16 7, i16 7>, <8 x i16> %i.amm
  store <8 x i16> %i.amn, ptr %2, align 2, !tbaa !8
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !11, !14, !13}
end_hunk_0
