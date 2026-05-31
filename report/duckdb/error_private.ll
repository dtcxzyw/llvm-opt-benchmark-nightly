begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Unspecified error code\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No error detected\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Error (generic)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unknown frame descriptor\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Version not supported\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Unsupported frame parameter\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Frame requires too much memory for decoding\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Data corruption detected\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Restored data doesn't match checksum\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"Header of Literals' block doesn't respect format specification\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Unsupported parameter\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Unsupported combination of parameters\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Parameter is out of bound\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Context should be init first\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Allocation error : not enough memory\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"workSpace buffer is not large enough\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"Operation not authorized at current processing stage\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"tableLog requires too much memory : unsupported\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Unsupported max Symbol Value : too large\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Specified maxSymbolValue is too small\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"pledged buffer stability condition is not respected\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Dictionary is corrupted\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Dictionary mismatch\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"Cannot create Dictionary from provided samples\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"Destination buffer is too small\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Src size is incorrect\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"Operation on NULL destination buffer\00", align 1
@.str.27 = private unnamed_addr constant [80 x i8] c"Operation made no progress over multiple calls, due to output buffer being full\00", align 1
@.str.28 = private unnamed_addr constant [73 x i8] c"Operation made no progress over multiple calls, due to input being empty\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Frame index is too large\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"An I/O error occurred when reading/seeking\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Destination buffer is wrong\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"Source buffer is wrong\00", align 1
@.str.33 = private unnamed_addr constant [62 x i8] c"Block-level external sequence producer returned an error code\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"External sequences are not valid\00", align 1
@switch.table._ZN11duckdb_zstd18ERR_getErrorStringENS_14ZSTD_ErrorCodeE = private unnamed_addr constant [108 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str.3, ptr @.str, ptr @.str.4, ptr @.str, ptr @.str.5, ptr @.str, ptr @.str.6, ptr @.str, ptr @.str, ptr @.str, ptr @.str.7, ptr @.str, ptr @.str.8, ptr @.str, ptr @.str.9, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str.21, ptr @.str, ptr @.str.22, ptr @.str, ptr @.str.23, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str, ptr @.str.17, ptr @.str, ptr @.str.18, ptr @.str, ptr @.str.19, ptr @.str, ptr @.str.20, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str.16, ptr @.str, ptr @.str.13, ptr @.str, ptr @.str.14, ptr @.str, ptr @.str.15, ptr @.str, ptr @.str, ptr @.str, ptr @.str.24, ptr @.str, ptr @.str.25, ptr @.str, ptr @.str.26, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str.27, ptr @.str, ptr @.str.28, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str.29, ptr @.str, ptr @.str.30, ptr @.str, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11duckdb_zstd18ERR_getErrorStringENS_14ZSTD_ErrorCodeE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = icmp ult i32 %0, 108
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11duckdb_zstd18ERR_getErrorStringENS_14ZSTD_ErrorCodeE, i64 %2
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %switch.load, %bb.b ], [ @.str, %bb.a ]
  ret ptr %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
end_hunk_0
