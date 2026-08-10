inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.NBitl::CInverterTableInitializer" = type { i8 }

@_ZN5NBitl12kInvertTableE = dso_local local_unnamed_addr global [256 x i8] zeroinitializer, align 16
@_ZN5NBitl26g_InverterTableInitializerE = dso_local local_unnamed_addr global %"struct.NBitl::CInverterTableInitializer" zeroinitializer, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_BitlDecoder.cpp, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_BitlDecoder.cpp() #0 section ".text.startup" {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %vec.ind)
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN5NBitl12kInvertTableE, i64 %index
  store <16 x i8> %i.a, ptr %i.b, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 16)
  %i.c = icmp eq i64 %index.next, 256
  br i1 %i.c, label %__cxx_global_var_init.exit, label %vector.body, !llvm.loop !9

__cxx_global_var_init.exit:                       ; preds = %vector.body
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.bitreverse.v16i8(<16 x i8>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
