Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/hash_sha3?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"sha3-224\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"b200IiIIB\00", align 1
@php_hash_sha3_224_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str, ptr @PHP_SHA3224Init, ptr @PHP_SHA3224Update, ptr @PHP_SHA3224Final, ptr @php_hash_copy, ptr @php_keccak_serialize, ptr @php_keccak_unserialize, ptr @.str.1, i64 28, i64 144, i64 224, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"sha3-256\00", align 1
@php_hash_sha3_256_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.2, ptr @PHP_SHA3256Init, ptr @PHP_SHA3256Update, ptr @PHP_SHA3256Final, ptr @php_hash_copy, ptr @php_keccak_serialize, ptr @php_keccak_unserialize, ptr @.str.1, i64 32, i64 136, i64 224, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"sha3-384\00", align 1
@php_hash_sha3_384_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.3, ptr @PHP_SHA3384Init, ptr @PHP_SHA3384Update, ptr @PHP_SHA3384Final, ptr @php_hash_copy, ptr @php_keccak_serialize, ptr @php_keccak_unserialize, ptr @.str.1, i64 48, i64 104, i64 224, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"sha3-512\00", align 1
@php_hash_sha3_512_ops = hidden local_unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i8, [7 x i8], i64 } { ptr @.str.4, ptr @PHP_SHA3512Init, ptr @PHP_SHA3512Update, ptr @PHP_SHA3512Final, ptr @php_hash_copy, ptr @php_keccak_serialize, ptr @php_keccak_unserialize, ptr @.str.1, i64 64, i64 72, i64 224, i8 1, [7 x i8] zeroinitializer, i64 0 }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA3224Init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @Keccak_HashInitialize(ptr noundef %0, i32 noundef 1152, i32 noundef 448, i32 noundef 224, i8 noundef zeroext 6) #2 ; 0 uses
  ret void
}

declare i32 @Keccak_HashInitialize(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA3224Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = shl i64 %2, 3
  %i.b = tail call i32 @Keccak_HashUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %i.a) #2 ; 0 uses
  ret void
}

declare i32 @Keccak_HashUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @PHP_SHA3224Final(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @Keccak_HashFinal(ptr noundef %1, ptr noundef %0) #2 ; 0 uses
  ret void
}

declare i32 @Keccak_HashFinal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @php_hash_copy(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @php_keccak_serialize(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2) #0 {
bb.a:
  store i64 100, ptr %1, align 8, !tbaa !12
  %i.a = tail call i32 @php_hash_serialize_spec(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.1) #2
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @php_keccak_unserialize(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = icmp eq i64 %1, 100
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @php_hash_unserialize_spec(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @.str.1) #2 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  %i.j = lshr i32 %i.i, 3
  %i.k = icmp ult i32 %i.g, %i.j
  br i1 %i.k, label %.thread, label %3

3:                                                ; preds = %bb.c
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %3
  %.08 = phi i32 [ 0, %bb.c ], [ -2000, %3 ], [ -1, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA3256Init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @Keccak_HashInitialize(ptr noundef %0, i32 noundef 1088, i32 noundef 512, i32 noundef 256, i8 noundef zeroext 6) #2 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA3256Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = shl i64 %2, 3
  %i.b = tail call i32 @Keccak_HashUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %i.a) #2 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @PHP_SHA3256Final(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @Keccak_HashFinal(ptr noundef %1, ptr noundef %0) #2 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA3384Init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @Keccak_HashInitialize(ptr noundef %0, i32 noundef 832, i32 noundef 768, i32 noundef 384, i8 noundef zeroext 6) #2 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA3384Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = shl i64 %2, 3
  %i.b = tail call i32 @Keccak_HashUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %i.a) #2 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @PHP_SHA3384Final(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @Keccak_HashFinal(ptr noundef %1, ptr noundef %0) #2 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA3512Init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @Keccak_HashInitialize(ptr noundef %0, i32 noundef 576, i32 noundef 1024, i32 noundef 512, i8 noundef zeroext 6) #2 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA3512Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = shl i64 %2, 3
  %i.b = tail call i32 @Keccak_HashUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %i.a) #2 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @PHP_SHA3512Final(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @Keccak_HashFinal(ptr noundef %1, ptr noundef %0) #2 ; 0 uses
  ret void
}

declare i32 @php_hash_serialize_spec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @php_hash_unserialize_spec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!15, !17, i64 8}
!15 = !{!"_php_hashcontext_object", !16, i64 0, !17, i64 8, !13, i64 16, !18, i64 24, !19, i64 32}
!16 = !{!"p1 _ZTS13_php_hash_ops", !17, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"_zend_object", !20, i64 0, !9, i64 8, !9, i64 12, !21, i64 16, !22, i64 24, !23, i64 32, !10, i64 40}
!20 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!21 = !{!"p1 _ZTS17_zend_class_entry", !17, i64 0}
!22 = !{!"p1 _ZTS21_zend_object_handlers", !17, i64 0}
!23 = !{!"p1 _ZTS11_zend_array", !17, i64 0}
!24 = !{!25, !9, i64 204}
!25 = !{!"", !26, i64 0, !9, i64 212, !10, i64 216}
!26 = !{!"KeccakWidth1600_SpongeInstanceStruct", !10, i64 0, !9, i64 200, !9, i64 204, !9, i64 208}
!27 = !{!25, !9, i64 200}
end_hunk_0
