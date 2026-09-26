Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIModeRegisterDefaults?download=true
inline.NumInlined: 35
inline.NumDeleted: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::Attribute" = type { ptr }

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [12 x i8] c"amdgpu-ieee\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"amdgpu-dx10-clamp\00", align 1
@_ZN4llvm6AMDGPU23FltRoundConversionTableE = local_unnamed_addr constant i64 907180131462994545, align 8
@_ZN4llvm6AMDGPU27FltRoundToHWConversionTableE = local_unnamed_addr constant i64 -5242644231586798321, align 8
@switch.table._ZN4llvm22SIModeRegisterDefaultsC2ERKNS_8FunctionERKNS_12GCNSubtargetE = private unnamed_addr constant [19 x i8] c"\FE\FE\FE\FE\FF\FF\FE\FF\FE\FE\FF\FF\FF\FF\FF\FF\FF\FE\FE", align 1

@_ZN4llvm22SIModeRegisterDefaultsC1ERKNS_8FunctionERKNS_12GCNSubtargetE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4llvm22SIModeRegisterDefaultsC2ERKNS_8FunctionERKNS_12GCNSubtargetE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm22SIModeRegisterDefaultsC2ERKNS_8FunctionERKNS_12GCNSubtargetE(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(5) initializes((0, 5)) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520232) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Attribute", align 8   ; 4 uses
  %4 = alloca %"class.llvm::Attribute", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i32 -1, ptr %i.a, align 1
  %i.c = load i16, ptr %i.b, align 2, !tbaa !13
  %i.d = lshr i16 %i.c, 4
  %i.e = and i16 %i.d, 1023
  %switch.tableidx = add nsw i16 %i.e, -87        ; 2 uses
  %i.f = icmp ult i16 %switch.tableidx, 19
  br i1 %i.f, label %switch.lookup, label %_ZN4llvm22SIModeRegisterDefaults24getDefaultForCallingConvEj.exit

switch.lookup:                                    ; preds = %bb.a
  %i.g = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm22SIModeRegisterDefaultsC2ERKNS_8FunctionERKNS_12GCNSubtargetE, i64 %i.g
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN4llvm22SIModeRegisterDefaults24getDefaultForCallingConvEj.exit

_ZN4llvm22SIModeRegisterDefaults24getDefaultForCallingConvEj.exit: ; preds = %bb.a, %switch.lookup
  %i.h = phi i8 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  %.sroa.0.0.insert.ext.i = zext i8 %i.h to i40
  store i40 %.sroa.0.0.insert.ext.i, ptr %0, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.j = load i64, ptr %i.i, align 8, !tbaa !15
  %i.k = and i64 %i.j, 288230376151711744
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm22SIModeRegisterDefaults24getDefaultForCallingConvEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.l = tail call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str, i64 11) #4
  store ptr %i.l, ptr %3, align 8
  %i.m = call { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #4 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  switch i64 %i.n, label %_ZN4llvmeqENS_9StringRefES0_.exit [
    i64 0, label %bb.d
    i64 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = extractvalue { ptr, i64 } %i.m, 0
  %i.p = load i32, ptr %i.o, align 1
  %i.q = icmp ne i32 %i.p, 1702195828
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  %i.t = zext i1 %i.s to i8
  br label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.b, %bb.c
  %.0.i = phi i8 [ %i.t, %bb.c ], [ 0, %bb.b ]
  %i.u = load i8, ptr %0, align 1
  %i.v = and i8 %i.u, -2
  %i.w = or disjoint i8 %i.v, %.0.i
  store i8 %i.w, ptr %0, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.x = call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str.2, i64 17) #4
  store ptr %i.x, ptr %4, align 8
  %i.y = call { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #4 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  switch i64 %i.z, label %_ZN4llvmeqENS_9StringRefES0_.exit13.thread [
    i64 0, label %bb.e
    i64 4, label %_ZN4llvmeqENS_9StringRefES0_.exit13
  ]

_ZN4llvmeqENS_9StringRefES0_.exit13:              ; preds = %bb.d
  %i.aa = extractvalue { ptr, i64 } %i.y, 0
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = icmp ne i32 %i.ab, 1702195828
  %i.ad = zext i1 %i.ac to i32
  %bcmp.i12.fr = freeze i32 %i.ad
  %i.ae = icmp eq i32 %bcmp.i12.fr, 0
  %spec.select = select i1 %i.ae, i8 2, i8 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit13.thread

_ZN4llvmeqENS_9StringRefES0_.exit13.thread:       ; preds = %bb.d, %_ZN4llvmeqENS_9StringRefES0_.exit13
  %i.af = phi i8 [ %spec.select, %_ZN4llvmeqENS_9StringRefES0_.exit13 ], [ 0, %bb.d ]
  %i.ag = load i8, ptr %0, align 1
  %i.ah = and i8 %i.ag, -3
  %i.ai = or disjoint i8 %i.ah, %i.af
  store i8 %i.ai, ptr %0, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvmeqENS_9StringRefES0_.exit13.thread, %_ZN4llvm22SIModeRegisterDefaults24getDefaultForCallingConvEj.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ak = call i32 @_ZNK4llvm8Function16getDenormalFPEnvEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #4 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.ak to i16
  store i16 %.sroa.0.0.extract.trunc, ptr %i.aj, align 1
  %.sroa.0.2.extract.shift = lshr i32 %i.ak, 16
  %.sroa.0.2.extract.trunc = trunc nuw i32 %.sroa.0.2.extract.shift to i16
  store i16 %.sroa.0.2.extract.trunc, ptr %i.a, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140), ptr, i64) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i32 @_ZNK4llvm8Function16getDenormalFPEnvEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 16) i32 @_ZN4llvm6AMDGPU33decodeFltRoundToHWConversionTableEj(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i32 %0, 3
  %i.b = shl i32 %0, 2                            ; 2 uses
  %i.c = add i32 %i.b, -16
  %i.d = select i1 %i.a, i32 %i.c, i32 %i.b
  %i.e = zext nneg i32 %i.d to i64
  %i.f = lshr i64 -5242644231586798321, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 15
  ret i32 %i.h
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTSN4llvm4TypeE", !9, i64 0}
!11 = !{!"p1 _ZTSN4llvm3UseE", !9, i64 0}
!12 = !{!"_ZTSN4llvm5ValueE", !4, i64 0, !4, i64 1, !4, i64 1, !8, i64 2, !5, i64 4, !5, i64 7, !5, i64 7, !5, i64 7, !5, i64 7, !10, i64 8, !11, i64 16}
!13 = !{!12, !8, i64 2}
!14 = !{!"long", !4, i64 0}
!15 = !{!14, !14, i64 0}
end_hunk_0
