Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_hexwave?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@hexwave_init:bb.a
  %wide.load304.7 = load <4 x float>, ptr %i.no, align 4, !tbaa !17, !alias.scope !153
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.nk ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  store <4 x float> %wide.load303.7, ptr %i.np, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load304.7, ptr %i.nq, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br label %middle.block306

middle.block306:                                  ; preds = %vector.body299.7, %vector.body299.6, %vector.body299.5, %vector.body299.4, %vector.body299.3, %vector.body299.2, %vector.body299.1, %vector.body299
  br i1 %cmp.n307, label %._crit_edge, label %scalar.ph275.preheader

scalar.ph275.preheader:                           ; preds = %.preheader139, %middle.block306
  %indvars.iv178.ph = phi i64 [ %n.vec298, %middle.block306 ], [ 0, %.preheader139 ] ; 5 uses
  br i1 %lcmp.mod343.not, label %scalar.ph275.prol.loopexit, label %scalar.ph275.prol

scalar.ph275.prol:                                ; preds = %scalar.ph275.preheader
  %i.nr = mul nuw nsw i64 %indvars.iv178.ph, %i.jh
  %i.ns = add nuw nsw i64 %i.nr, %indvars.iv183   ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ns
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !17
  %i.nv = add nuw nsw i64 %indvars.iv178.ph, %i.kq ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.nv
  store float %i.nu, ptr %i.nw, align 4, !tbaa !17
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ns
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !17
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.nv
  store float %i.ny, ptr %i.nz, align 4, !tbaa !17
  %indvars.iv.next179.prol = or disjoint i64 %indvars.iv178.ph, 1
  br label %scalar.ph275.prol.loopexit

scalar.ph275.prol.loopexit:                       ; preds = %scalar.ph275.prol, %scalar.ph275.preheader
  %indvars.iv178.unr = phi i64 [ %indvars.iv178.ph, %scalar.ph275.preheader ], [ %indvars.iv.next179.prol, %scalar.ph275.prol ]
  %i.oa = icmp eq i64 %indvars.iv178.ph, %i.jv
  br i1 %i.oa, label %._crit_edge, label %scalar.ph275

.preheader138:                                    ; preds = %._crit_edge, %.preheader140
  %.not133162 = icmp slt i32 %1, 0
  br i1 %.not133162, label %._crit_edge164, label %.preheader137.lr.ph

.preheader137.lr.ph:                              ; preds = %.preheader138
  %i.ob = icmp slt i32 %i.a, %spec.store.select135
  %i.oc = uitofp nneg i32 %1 to float
  %i.od = fdiv float 1.000000e+00, %i.oc          ; 2 uses
  br i1 %i.ob, label %.preheader137.us.us.preheader, label %._crit_edge164

.preheader137.us.us.preheader:                    ; preds = %.preheader137.lr.ph
  %i.oe = sext i32 %i.a to i64                    ; 8 uses
  %i.of = sext i32 %spec.store.select135 to i64   ; 5 uses
  %wide.trip.count201 = zext i32 %i.c to i64
  %i.og = sub nsw i64 %i.of, %i.oe                ; 3 uses
  %min.iters.check329 = icmp ult i64 %i.og, 8
  %n.vec331 = and i64 %i.og, -8                   ; 3 uses
  %i.oh = add nsw i64 %n.vec331, %i.oe
  %cmp.n338 = icmp eq i64 %i.og, %n.vec331
  %i.oi = sub nsw i64 %i.of, %i.oe                ; 3 uses
  %min.iters.check310 = icmp ult i64 %i.oi, 4
  %n.vec312 = and i64 %i.oi, -4                   ; 3 uses
  %i.oj = add nsw i64 %n.vec312, %i.oe
  %broadcast.splatinsert315 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat316 = shufflevector <4 x i32> %broadcast.splatinsert315, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert317 = insertelement <4 x float> poison, float %i.od, i64 0
  %broadcast.splat318 = shufflevector <4 x float> %broadcast.splatinsert317, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert319 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat320 = shufflevector <4 x i32> %broadcast.splatinsert319, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat320, <i32 0, i32 1, i32 2, i32 3>
  %cmp.n326 = icmp eq i64 %i.oi, %n.vec312
  br label %.preheader137.us.us

.preheader137.us.us:                              ; preds = %.preheader137.us.us.preheader, %._crit_edge161.us.us
  %indvars.iv198 = phi i64 [ 0, %.preheader137.us.us.preheader ], [ %indvars.iv.next199, %._crit_edge161.us.us ] ; 3 uses
  %i.ok = mul nsw i64 %indvars.iv198, %i.of       ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.0125, i64 %i.ok ; 2 uses
  br i1 %min.iters.check329, label %scalar.ph328.preheader, label %vector.ph330

vector.ph330:                                     ; preds = %.preheader137.us.us
  %invariant.gep345 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.oe
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph330
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next336, %vector.body332 ] ; 2 uses
  %gep346 = getelementptr [4 x i8], ptr %invariant.gep345, i64 %index333 ; 3 uses
  %i.ol = getelementptr i8, ptr %gep346, i64 16   ; 2 uses
  %wide.load334 = load <4 x float>, ptr %gep346, align 4, !tbaa !17
  %wide.load335 = load <4 x float>, ptr %i.ol, align 4, !tbaa !17
  %i.om = fadd <4 x float> %wide.load334, splat (float -1.000000e+00)
  %i.on = fadd <4 x float> %wide.load335, splat (float -1.000000e+00)
  store <4 x float> %i.om, ptr %gep346, align 4, !tbaa !17
  store <4 x float> %i.on, ptr %i.ol, align 4, !tbaa !17
  %index.next336 = add nuw i64 %index333, 8       ; 2 uses
  %i.oo = icmp eq i64 %index.next336, %n.vec331
  br i1 %i.oo, label %middle.block337, label %vector.body332, !llvm.loop !137

middle.block337:                                  ; preds = %vector.body332
  br i1 %cmp.n338, label %..preheader_crit_edge.us.us, label %scalar.ph328.preheader

scalar.ph328.preheader:                           ; preds = %.preheader137.us.us, %middle.block337
  %indvars.iv188.ph = phi i64 [ %i.oe, %.preheader137.us.us ], [ %i.oh, %middle.block337 ]
  br label %scalar.ph328

scalar.ph328:                                     ; preds = %scalar.ph328.preheader, %scalar.ph328
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %scalar.ph328 ], [ %indvars.iv188.ph, %scalar.ph328.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv188 ; 2 uses
  %i.op = load float, ptr %gep, align 4, !tbaa !17
  %i.oq = fadd float %i.op, -1.000000e+00
  store float %i.oq, ptr %gep, align 4, !tbaa !17
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %i.of
  br i1 %exitcond192.not, label %..preheader_crit_edge.us.us, label %scalar.ph328, !llvm.loop !138

..preheader_crit_edge.us.us:                      ; preds = %scalar.ph328, %middle.block337
  %i.or = trunc nuw nsw i64 %indvars.iv198 to i32
  %i.os = sub i32 %i.or, %i.b                     ; 2 uses
  %invariant.gep208 = getelementptr [4 x i8], ptr %.0124, i64 %i.ok ; 2 uses
  br i1 %min.iters.check310, label %scalar.ph309.preheader, label %vector.ph311

vector.ph311:                                     ; preds = %..preheader_crit_edge.us.us
  %broadcast.splatinsert313 = insertelement <4 x i32> poison, i32 %i.os, i64 0
  %broadcast.splat314 = shufflevector <4 x i32> %broadcast.splatinsert313, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep347 = getelementptr [4 x i8], ptr %invariant.gep208, i64 %i.oe
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph311
  %index322 = phi i64 [ 0, %vector.ph311 ], [ %index.next324, %vector.body321 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph311 ], [ %vec.ind.next, %vector.body321 ] ; 2 uses
  %i.ot = mul <4 x i32> %broadcast.splat316, %vec.ind
  %i.ou = add <4 x i32> %broadcast.splat314, %i.ot
  %i.ov = sitofp <4 x i32> %i.ou to <4 x float>
  %gep348 = getelementptr [4 x i8], ptr %invariant.gep347, i64 %index322 ; 2 uses
  %wide.load323 = load <4 x float>, ptr %gep348, align 4, !tbaa !17
  %i.ow = fneg <4 x float> %i.ov
  %i.ox = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ow, <4 x float> %broadcast.splat318, <4 x float> %wide.load323)
  store <4 x float> %i.ox, ptr %gep348, align 4, !tbaa !17
  %index.next324 = add nuw i64 %index322, 4       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.oy = icmp eq i64 %index.next324, %n.vec312
  br i1 %i.oy, label %middle.block325, label %vector.body321, !llvm.loop !139

middle.block325:                                  ; preds = %vector.body321
  br i1 %cmp.n326, label %._crit_edge161.us.us, label %scalar.ph309.preheader

scalar.ph309.preheader:                           ; preds = %..preheader_crit_edge.us.us, %middle.block325
  %indvars.iv193.ph = phi i64 [ %i.oe, %..preheader_crit_edge.us.us ], [ %i.oj, %middle.block325 ]
  br label %scalar.ph309

scalar.ph309:                                     ; preds = %scalar.ph309.preheader, %scalar.ph309
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %scalar.ph309 ], [ %indvars.iv193.ph, %scalar.ph309.preheader ] ; 3 uses
  %i.oz = trunc i64 %indvars.iv193 to i32
  %i.pa = mul i32 %1, %i.oz
  %i.pb = add i32 %i.os, %i.pa
  %i.pc = sitofp i32 %i.pb to float
  %gep209 = getelementptr [4 x i8], ptr %invariant.gep208, i64 %indvars.iv193 ; 2 uses
  %i.pd = load float, ptr %gep209, align 4, !tbaa !17
  %i.pe = fneg float %i.pc
  %i.pf = tail call float @llvm.fmuladd.f32(float %i.pe, float %i.od, float %i.pd)
  store float %i.pf, ptr %gep209, align 4, !tbaa !17
  %indvars.iv.next194 = add nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %i.of
  br i1 %exitcond197.not, label %._crit_edge161.us.us, label %scalar.ph309, !llvm.loop !140

._crit_edge161.us.us:                             ; preds = %scalar.ph309, %middle.block325
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count201
  br i1 %exitcond202.not, label %._crit_edge164, label %.preheader137.us.us, !llvm.loop !141

scalar.ph275:                                     ; preds = %scalar.ph275.prol.loopexit, %scalar.ph275
  %indvars.iv178 = phi i64 [ %indvars.iv.next179.1, %scalar.ph275 ], [ %indvars.iv178.unr, %scalar.ph275.prol.loopexit ] ; 4 uses
  %i.pg = mul nuw nsw i64 %indvars.iv178, %i.jh
  %i.ph = add nuw nsw i64 %i.pg, %indvars.iv183   ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ph
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !17
  %i.pk = add nuw nsw i64 %indvars.iv178, %i.kq   ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.pk
  store float %i.pj, ptr %i.pl, align 4, !tbaa !17
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ph
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !17
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.pk
  store float %i.pn, ptr %i.po, align 4, !tbaa !17
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.pp = mul nuw nsw i64 %indvars.iv.next179, %i.jh
  %i.pq = add nuw nsw i64 %i.pp, %indvars.iv183   ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.pq
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !17
  %i.pt = add nuw nsw i64 %indvars.iv.next179, %i.kq ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.pt
  store float %i.ps, ptr %i.pu, align 4, !tbaa !17
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.pq
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !17
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.pt
  store float %i.pw, ptr %i.px, align 4, !tbaa !17
  %indvars.iv.next179.1 = add nuw nsw i64 %indvars.iv178, 2 ; 2 uses
  %exitcond182.not.1 = icmp eq i64 %indvars.iv.next179.1, %i.ji
  br i1 %exitcond182.not.1, label %._crit_edge, label %scalar.ph275, !llvm.loop !142

._crit_edge:                                      ; preds = %scalar.ph275.prol.loopexit, %scalar.ph275, %middle.block306
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count186
  br i1 %exitcond187.not, label %.preheader138, label %.preheader139, !llvm.loop !143

._crit_edge164:                                   ; preds = %._crit_edge161.us.us, %.preheader137.lr.ph, %.preheader138
  store ptr %.0125, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28
  store ptr %.0124, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29
  store i32 %spec.store.select135, ptr @hexblep, align 8, !tbaa !23
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4, !tbaa !24
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge164
  tail call void @free(ptr noundef %i.t) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge164
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x double> @llvm.fmuladd.v16f64(<16 x double>, <16 x double>, <16 x double>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"", !5, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!10 = !{!"HexWave", !8, i64 0, !8, i64 4, !9, i64 8, !9, i64 24, !5, i64 40, !4, i64 44}
!11 = !{!10, !5, i64 24}
!12 = !{!10, !8, i64 28}
!13 = !{!10, !8, i64 36}
!14 = !{!10, !8, i64 32}
!15 = !{!10, !5, i64 40}
!16 = !{!5, !5, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{i64 0, i64 4, !16, i64 4, i64 4, !17, i64 8, i64 4, !17, i64 12, i64 4, !17}
!19 = !{!10, !8, i64 4}
!20 = !{!"any pointer", !4, i64 0}
!21 = !{!"p1 float", !20, i64 0}
!22 = !{!"", !5, i64 0, !5, i64 4, !21, i64 8, !21, i64 16}
!23 = !{!22, !5, i64 0}
!24 = !{!22, !5, i64 4}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!22, !21, i64 8}
!29 = !{!22, !21, i64 16}
!30 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!31 = !{!30, !8, i64 0}
!32 = !{!30, !8, i64 4}
!33 = !{!30, !8, i64 8}
!34 = distinct !{!34, i1 false, !"LVerDomain"}
!35 = distinct !{!35, !34}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !25, !26, !27}
!39 = distinct !{!39, !25, !26}
!40 = !{!35}
!41 = !{!36}
!42 = !{!37}
!43 = !{!36, !35}
!44 = distinct !{!44, i1 false, !"LVerDomain"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !44}
!48 = distinct !{!48, !25, !26, !27}
!49 = distinct !{!49, !25, !26}
!50 = !{!45}
!51 = !{!46}
!52 = !{!47}
!53 = !{!46, !45}
!54 = distinct !{!54, i1 false, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !54}
!58 = distinct !{!58, !25, !26, !27}
!59 = distinct !{!59, !25, !26}
!60 = !{!55}
!61 = !{!56}
!62 = !{!57}
!63 = !{!56, !55}
!64 = !{!10, !8, i64 16}
!65 = !{!10, !8, i64 12}
!66 = !{!10, !8, i64 20}
!67 = !{!10, !5, i64 8}
!68 = distinct !{!68, i1 false, !"LVerDomain"}
!69 = distinct !{!69, !68}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !68}
!72 = distinct !{!72, !25, !26, !27}
!73 = distinct !{!73, !25, !26}
!74 = distinct !{!74, !25}
!75 = distinct !{!75, i1 false, !"LVerDomain"}
!76 = distinct !{!76, !75}
!77 = distinct !{!77, !75}
!78 = distinct !{!78, !75}
!79 = distinct !{!79, !25, !26, !27}
!80 = distinct !{!80, !25, !26}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = distinct !{!85, !25, !26, !27}
!86 = distinct !{!86, !25, !26}
!87 = distinct !{!87, i1 false, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !87}
!91 = distinct !{!91, !25, !26, !27}
!92 = distinct !{!92, !25, !26}
!93 = distinct !{!93, i1 false, !"LVerDomain"}
!94 = distinct !{!94, !93}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !93}
!97 = distinct !{!97, !25, !26, !27}
!98 = distinct !{!98, !25, !26}
!99 = distinct !{!99, !25}
!100 = distinct !{!100, !25, !26, !27}
!101 = distinct !{!101, !25, !27, !26}
!102 = !{!10, !8, i64 0}
!103 = !{!69}
!104 = !{!70}
!105 = !{!71}
!106 = !{!70, !69}
!107 = !{!76}
!108 = !{!77}
!109 = !{!78}
!110 = !{!77, !76}
!111 = !{!82}
!112 = !{!83}
!113 = !{!84}
!114 = !{!83, !82}
!115 = !{!88}
!116 = !{!89}
!117 = !{!90}
!118 = !{!89, !88}
!119 = !{!94}
!120 = !{!95}
!121 = !{!96}
!122 = !{!95, !94}
!123 = distinct !{!123, i1 false, !"LVerDomain"}
!124 = distinct !{!124, !123}
!125 = distinct !{!125, !123}
!126 = distinct !{!126, !123}
!127 = distinct !{!127, !123}
!128 = distinct !{!128, !25, !26, !27}
!129 = distinct !{!129, !25}
!130 = distinct !{!130, !25}
!131 = distinct !{!131, !25, !26}
!132 = distinct !{!132, i1 false, !"LVerDomain"}
!133 = distinct !{!133, !132}
!134 = distinct !{!134, !132}
!135 = distinct !{!135, !132}
!136 = distinct !{!136, !132}
!137 = distinct !{!137, !25, !26, !27}
!138 = distinct !{!138, !25, !27, !26}
!139 = distinct !{!139, !25, !26, !27}
!140 = distinct !{!140, !25, !27, !26}
!141 = distinct !{!141, !25}
!142 = distinct !{!142, !25, !26}
!143 = distinct !{!143, !25}
end_hunk_0
