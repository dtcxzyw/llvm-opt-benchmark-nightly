Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Calignm1?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Calignm1:bb.a
  %i.ann = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608.1
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !15
  %i.anp = trunc nuw i64 %indvars.iv.next608.2 to i32
  store i32 %i.anp, ptr %i.ano, align 4, !tbaa !7
  %indvars.iv.next608.3 = or disjoint i64 %indvars.iv607, 4 ; 2 uses
  %i.anq = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608.2
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !15
  %i.ans = trunc nuw i64 %indvars.iv.next608.3 to i32
  store i32 %i.ans, ptr %i.anr, align 4, !tbaa !7
  %indvars.iv.next608.4 = or disjoint i64 %indvars.iv607, 5 ; 2 uses
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608.3
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !15
  %i.anv = trunc nuw i64 %indvars.iv.next608.4 to i32
  store i32 %i.anv, ptr %i.anu, align 4, !tbaa !7
  %indvars.iv.next608.5 = or disjoint i64 %indvars.iv607, 6 ; 2 uses
  %i.anw = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608.4
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !15
  %i.any = trunc nuw i64 %indvars.iv.next608.5 to i32
  store i32 %i.any, ptr %i.anx, align 4, !tbaa !7
  %indvars.iv.next608.6 = or disjoint i64 %indvars.iv607, 7 ; 2 uses
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608.5
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !15
  %i.aob = trunc nuw i64 %indvars.iv.next608.6 to i32
  store i32 %i.aob, ptr %i.aoa, align 4, !tbaa !7
  %indvars.iv.next608.7 = add nuw nsw i64 %indvars.iv607, 8 ; 3 uses
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608.6
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !15
  %i.aoe = trunc nuw i64 %indvars.iv.next608.7 to i32
  store i32 %i.aoe, ptr %i.aod, align 4, !tbaa !7
  %niter838.next.7 = add i64 %niter838, 8         ; 2 uses
  %niter838.ncmp.7 = icmp eq i64 %niter838.next.7, %unroll_iter837
  br i1 %niter838.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %bb.an, !llvm.loop !57

scalar.ph772:                                     ; preds = %scalar.ph772.preheader, %scalar.ph772
  %indvars.iv612 = phi i64 [ %indvars.iv.next613, %scalar.ph772 ], [ %indvars.iv612.ph, %scalar.ph772.preheader ] ; 3 uses
  %indvars.iv.next613 = add nuw nsw i64 %indvars.iv612, 1 ; 2 uses
  %i.aof = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.aog = xor i32 %i.aof, -1
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %i.ana, i64 %indvars.iv612
  store i32 %i.aog, ptr %i.aoh, align 4, !tbaa !7
  %exitcond616.not = icmp eq i64 %indvars.iv.next613, %wide.trip.count615
  br i1 %exitcond616.not, label %._crit_edge483, label %scalar.ph772, !llvm.loop !58

._crit_edge483:                                   ; preds = %scalar.ph772, %middle.block779, %.preheader
  %i.aoi = getelementptr inbounds [8 x i8], ptr %i.abe, i64 %i.ux
  %i.aoj = load ptr, ptr @Calignm1.nseq, align 8, !tbaa !61 ; 2 uses
  tail call void @tracking(ptr noundef %i.aoj, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %.pre635.pre, i32 noundef %4)
  %i.aok = load ptr, ptr %i.aoi, align 8, !tbaa !70
  %i.aol = getelementptr inbounds [4 x i8], ptr %i.aok, i64 %.pre-phi
  %i.aom = load float, ptr %i.aol, align 4, !tbaa !74
  store float %i.aom, ptr %0, align 4, !tbaa !74
  ret ptr %i.aoj
}

declare void @FreeFloatMtx(ptr noundef) local_unnamed_addr #4

declare void @FreeFloatCub(ptr noundef) local_unnamed_addr #4

declare void @FreeFloatTri(ptr noundef) local_unnamed_addr #4

declare void @FreeFloatVec(ptr noundef) local_unnamed_addr #4

declare void @FreeIntVec(ptr noundef) local_unnamed_addr #4

declare void @FreeCharMtx(ptr noundef) local_unnamed_addr #4

declare ptr @AllocateFloatMtx(i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @AllocateFloatCub(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @AllocateFloatTri(i32 noundef) local_unnamed_addr #4

declare ptr @AllocateFloatVec(i32 noundef) local_unnamed_addr #4

declare ptr @AllocateIntVec(i32 noundef) local_unnamed_addr #4

declare ptr @AllocateCharMtx(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @FreeIntMtx(ptr noundef) local_unnamed_addr #4

declare ptr @AllocateIntMtx(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @scmx_calc(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nounwind uwtable
define dso_local double @Cscore_m_1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9 ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = tail call ptr @AllocateIntVec(i32 noundef %1) #10 ; 4 uses
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %1) #10 ; 2 uses
  %i.f = icmp sgt i32 %i.c, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge117

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = icmp sgt i32 %1, 0
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h ; 2 uses
  br i1 %i.g, label %.preheader.lr.ph.split.us, label %._crit_edge117

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.j = getelementptr inbounds [8 x i8], ptr %3, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.l = zext i32 %2 to i64
  %wide.trip.count124 = and i64 %i.b, 2147483647
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 5 uses
  %.092116.us = phi double [ %i.ca, %._crit_edge.us ], [ 0.000000e+00, %.preheader.lr.ph.split.us ]
  %.not.us = icmp eq i64 %indvars.iv121, 0
  %i.m = add nsw i64 %indvars.iv121, -1           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.i ] ; 9 uses
  %i.n = phi <2 x double> [ zeroinitializer, %.preheader.us ], [ %i.bw, %bb.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.p = load double, ptr %i.o, align 8, !tbaa !17
  %i.q = icmp eq i64 %indvars.iv, %i.l
  br i1 %i.q, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.us, label %.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %.not109.us = icmp eq i8 %i.u, 45
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.m
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = icmp eq i8 %i.x, 45
  %i.z = zext i1 %i.y to i32                      ; 2 uses
  br i1 %.not109.us, label %bb.e, label %.thread.us

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !7
  br label %bb.f

.thread.us:                                       ; preds = %bb.d, %bb.c
  %.093108.us = phi i32 [ %i.z, %bb.d ], [ 0, %bb.c ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 0, ptr %i.ad, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %.thread.us, %bb.e
  %.093107.us = phi i32 [ %.093108.us, %.thread.us ], [ %i.z, %bb.e ] ; 5 uses
  %.094105.us = phi i32 [ 0, %.thread.us ], [ 1, %bb.e ] ; 3 uses
  %.not98.us = icmp eq i32 %.093107.us, 0
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  br i1 %.not98.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = add nsw i32 %i.af, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ %i.ag, %bb.g ], [ 0, %bb.f ] ; 3 uses
  store i32 %.sink, ptr %i.ae, align 4, !tbaa !7
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv121
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11  ; 2 uses
  %i.al = icmp eq i8 %i.ak, 45                    ; 4 uses
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv121
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !11  ; 2 uses
  %.not101.us = icmp ne i8 %i.ao, 45              ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7  ; 2 uses
  %.not99.not.us = icmp slt i32 %i.aq, %.sink
  %.not100.not.us = icmp sle i32 %i.aq, %.sink
  %i.ar = xor i32 %.094105.us, 1                  ; 2 uses
  %i.as = select i1 %i.al, i32 %i.ar, i32 0       ; 2 uses
  %i.at = xor i32 %.093107.us, 1                  ; 2 uses
  %i.au = select i1 %i.al, i32 0, i32 %i.ar
  %.v.us = select i1 %.not101.us, i32 %i.as, i32 %i.au
  %i.av = mul nuw nsw i32 %.v.us, %i.at
  %i.aw = mul nuw nsw i32 %i.as, %.093107.us
  %i.ax = select i1 %i.al, i32 0, i32 %.094105.us ; 2 uses
  %i.ay = mul nuw nsw i32 %i.ax, %i.at
  %i.az = mul nuw nsw i32 %i.ax, %.093107.us
  %i.ba = select i1 %.not99.not.us, i1 true, i1 %.not101.us
  %i.bb = select i1 %i.ba, i32 0, i32 %i.az
  %i.bc = select i1 %i.al, i32 %.094105.us, i32 0
  %i.bd = mul nuw nsw i32 %i.bc, %.093107.us
  %.not110.us = select i1 %.not100.not.us, i1 %.not101.us, i1 false
  %i.be = select i1 %.not110.us, i32 %i.bd, i32 0
  %4 = add nuw nsw i32 %i.ay, %i.bb
  %i.bf = add nuw nsw i32 %i.aw, %i.be
  %5 = select i1 %.not101.us, i32 %i.bf, i32 %4
  %i.bg = add nuw nsw i32 %5, %i.av
  %i.bh = uitofp nneg i32 %i.bg to double
  %i.bi = load i32, ptr @penalty, align 4, !tbaa !7
  %i.bj = sitofp i32 %i.bi to double
  %i.bk = fmul nnan double %i.bj, %i.bh
  %i.bl = sext i8 %i.ak to i64
  %i.bm = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.bl
  %i.bn = sext i8 %i.ao to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = sitofp i32 %i.bp to double
  %i.br = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bq, i64 1
  %i.bt = insertelement <2 x double> poison, double %i.p, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bu, <2 x double> %i.n)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.bw = phi <2 x double> [ %i.bv, %bb.h ], [ %i.n, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !76

._crit_edge.us:                                   ; preds = %bb.i
  %i.bx = extractelement <2 x double> %i.bw, i64 1
  %i.by = fadd double %.092116.us, %i.bx
  %i.bz = extractelement <2 x double> %i.bw, i64 0
  %i.ca = fadd double %i.bz, %i.by                ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge117, label %.preheader.us, !llvm.loop !77

._crit_edge117:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.a
  %.092.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.preheader.lr.ph ], [ %i.ca, %._crit_edge.us ]
  tail call void @free(ptr noundef %i.d) #10
  tail call void @free(ptr noundef %i.e) #10
  ret double %.092.lcssa
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

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
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"p1 int", !8, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"double", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !13, !62, !63}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !13, !62}
!33 = distinct !{!33, !13, !62, !63}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !13, !62}
!36 = distinct !{!36, !13, !62, !63}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13, !75}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !13, !62, !63}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13, !63, !62}
!59 = !{!"any p2 pointer", !8, i64 0}
!60 = !{!"p2 omnipotent char", !59, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = !{!"p2 float", !59, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"any p3 pointer", !59, i64 0}
!67 = !{!"p3 float", !66, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"p1 float", !8, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"p2 int", !59, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"float", !5, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"llvm.loop.peeled.count", i32 1}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = !{!"p1 double", !8, i64 0}
!79 = !{!78, !78, i64 0}
end_hunk_0
