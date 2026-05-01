inline.NumInlined: 398
inline.NumDeleted: 233
begin_hunk_0_@_ZN16OpenColorIO_v2_521GenerateIdentityLut1DEPfii:bb.a
  br i1 %or.cond, label %.preheader.us.preheader, label %.loopexit

.preheader.us.preheader:                          ; preds = %bb.b
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %2, i32 3)
  %i.f = zext nneg i32 %2 to i64
  %wide.trip.count25 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  %trip.count.minus.1 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %3 = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %4 = extractelement <4 x i1> %3, i64 0
  %5 = extractelement <4 x i1> %3, i64 1
  %6 = extractelement <4 x i1> %3, i64 2
  %7 = extractelement <4 x i1> %3, i64 3
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %pred.store.continue34
  %indvars.iv22 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next23, %pred.store.continue34 ] ; 3 uses
  %i.g = trunc nuw nsw i64 %indvars.iv22 to i32
  %i.h = uitofp nneg i32 %i.g to float
  %i.i = fmul float %i.c, %i.h                    ; 4 uses
  %i.j = mul nuw nsw i64 %indvars.iv22, %i.f
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j ; 4 uses
  br i1 %4, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %.preheader.us
  store float %i.i, ptr %invariant.gep, align 4, !tbaa !38
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %.preheader.us
  br i1 %5, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue
  %8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  store float %i.i, ptr %8, align 4, !tbaa !38
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue
  br i1 %6, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %i.k = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  store float %i.i, ptr %i.k, align 4, !tbaa !38
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  br i1 %7, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.l = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 12
  store float %i.i, ptr %i.l, align 4, !tbaa !38
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count25
  br i1 %exitcond26.not, label %.loopexit, label %.preheader.us, !llvm.loop !40
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_521GenerateIdentityLut1DEPfii:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff(ptr noundef writeonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #4 {
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %5
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %2, i32 3)
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph25, label %.loopexit

.lr.ph25:                                         ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff/@_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff:bb.a
.lr.ph.us.preheader:                              ; preds = %.lr.ph25
  %i.f = zext nneg i32 %2 to i64
  %wide.trip.count31 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  %trip.count.minus.1 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %6 = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %7 = extractelement <4 x i1> %6, i64 0
  %8 = extractelement <4 x i1> %6, i64 1
  %9 = extractelement <4 x i1> %6, i64 2
  %10 = extractelement <4 x i1> %6, i64 3
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %pred.store.continue40
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff/@_ZN16OpenColorIO_v2_524GenerateLinearScaleLut1DEPfiiff:bb.a
  %i.h = uitofp nneg i32 %i.g to double
  %i.i = fdiv double %i.h, %i.c
  %i.j = fptrunc double %i.i to float
  %i.k = tail call noundef float @llvm.fmuladd.f32(float %i.d, float %i.j, float %3) ; 4 uses
  %i.l = mul nuw nsw i64 %indvars.iv28, %i.f
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 4 uses
  br i1 %7, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %.lr.ph.us
  store float %i.k, ptr %invariant.gep, align 4, !tbaa !38
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %.lr.ph.us
  br i1 %8, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue
  %11 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  store float %i.k, ptr %11, align 4, !tbaa !38
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue
  br i1 %9, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %i.m = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  store float %i.k, ptr %i.m, align 4, !tbaa !38
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  br i1 %10, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  %i.n = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 12
  store float %i.k, ptr %i.n, align 4, !tbaa !38
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !42

.loopexit:                                        ; preds = %pred.store.continue40, %.lr.ph25, %bb.a, %5
  ret void
}

end_hunk_3
begin_hunk_4_@llvm.memset.p0.i64
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_4
