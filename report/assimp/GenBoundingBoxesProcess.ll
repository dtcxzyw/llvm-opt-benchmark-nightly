Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/GenBoundingBoxesProcess?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN6Assimp11BaseProcessD2Ev = comdat any

$_ZN6Assimp23GenBoundingBoxesProcessD0Ev = comdat any

@_ZTVN6Assimp23GenBoundingBoxesProcessE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp23GenBoundingBoxesProcessE, ptr @_ZN6Assimp11BaseProcessD2Ev, ptr @_ZN6Assimp23GenBoundingBoxesProcessD0Ev, ptr @_ZNK6Assimp23GenBoundingBoxesProcess8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp11BaseProcess15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp23GenBoundingBoxesProcess7ExecuteEP7aiScene] }, align 8, !guid !4
@_ZTIN6Assimp23GenBoundingBoxesProcessE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp23GenBoundingBoxesProcessE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8, !guid !5
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp23GenBoundingBoxesProcessE = constant [35 x i8] c"N6Assimp23GenBoundingBoxesProcessE\00", align 1, !guid !6
@_ZTIN6Assimp11BaseProcessE = external constant ptr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK6Assimp23GenBoundingBoxesProcess8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #0 align 2 !guid !8 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #1 !guid !9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %indvars.iv ; 4 uses
  %i.k = load float, ptr %i.j, align 4            ; 2 uses
  %i.l = load float, ptr %1, align 4
  %i.m = fcmp olt float %i.k, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.k, ptr %1, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load float, ptr %i.n, align 4            ; 2 uses
  %i.p = load float, ptr %i.e, align 4
  %i.q = fcmp olt float %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.o, ptr %i.e, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.s = load float, ptr %i.r, align 4            ; 2 uses
  %i.t = load float, ptr %i.f, align 4
  %i.u = fcmp olt float %i.s, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float %i.s, ptr %i.f, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load float, ptr %i.j, align 4            ; 2 uses
  %i.w = load float, ptr %2, align 4
  %i.x = fcmp ogt float %i.v, %i.w
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.v, ptr %2, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = load float, ptr %i.n, align 4            ; 2 uses
  %i.z = load float, ptr %i.g, align 4
  %i.aa = fcmp ogt float %i.y, %i.z
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store float %i.y, ptr %i.g, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = load float, ptr %i.r, align 4           ; 2 uses
  %i.ac = load float, ptr %i.h, align 4
  %i.ad = fcmp ogt float %i.ab, %i.ac
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %i.ab, ptr %i.h, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.a, align 4
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp samesign ult i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.b, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.n, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6Assimp23GenBoundingBoxesProcess7ExecuteEP7aiScene(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #2 align 2 !guid !11 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.e = phi i32 [ %i.c, %.lr.ph ], [ %i.ac, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = zext i32 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.p = phi <4 x float> [ <float 9.999990e+05, float 9.999990e+05, float 9.999990e+05, float -9.999990e+05>, %.lr.ph.i ], [ %i.x, %bb.d ] ; 3 uses
  %i.q = phi <2 x float> [ splat (float -9.999990e+05), %.lr.ph.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.s = load <3 x float>, ptr %i.r, align 4      ; 2 uses
  %i.t = shufflevector <3 x float> %i.s, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.u = fcmp olt <4 x float> %i.t, %i.p
  %i.v = fcmp ogt <4 x float> %i.t, %i.p
  %i.w = shufflevector <4 x i1> %i.u, <4 x i1> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.x = select <4 x i1> %i.w, <4 x float> %i.t, <4 x float> %i.p ; 2 uses
  %i.y = shufflevector <3 x float> %i.s, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.z = fcmp ogt <2 x float> %i.y, %i.q
  %i.aa = select <2 x i1> %i.z, <2 x float> %i.y, <2 x float> %i.q ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not, label %_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_.exit, label %bb.d, !llvm.loop !0

_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_.exit: ; preds = %bb.d, %bb.c
  %2 = phi <4 x float> [ <float 9.999990e+05, float 9.999990e+05, float 9.999990e+05, float -9.999990e+05>, %bb.c ], [ %i.x, %bb.d ]
  %3 = phi <2 x float> [ splat (float -9.999990e+05), %bb.c ], [ %i.aa, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 1284
  store <4 x float> %2, ptr %i.ab, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1300
  store <2 x float> %3, ptr %.sroa.6.0..sroa_idx, align 4
  %.pre = load i32, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_.exit
  %i.ac = phi i32 [ %i.e, %bb.b ], [ %.pre, %_ZN6Assimp9checkMeshEP6aiMeshR10aiVector3tIfES4_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %bb.b, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !guid !12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp23GenBoundingBoxesProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !guid !13 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #6
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare void @_ZN6Assimp11BaseProcess15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !7}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{i64 -2194969153583286367}
!5 = !{i64 -3873114229358535043}
!6 = !{i64 -7421807549159604022}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i64 -6175907961822169069}
!9 = !{i64 7753918312980299727}
!10 = distinct !{!10, !7}
!11 = !{i64 2194281229342083167}
!12 = !{i64 -5435750618120175605}
!13 = !{i64 -7290151683234736109}
end_hunk_0
