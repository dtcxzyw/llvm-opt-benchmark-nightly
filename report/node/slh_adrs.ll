inline.NumInlined: 12
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slh_adrs_func_st = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ossl_slh_get_adrs_fn.methods = internal constant [2 x %struct.slh_adrs_func_st] [%struct.slh_adrs_func_st { ptr @slh_adrs_set_layer_address, ptr @slh_adrs_set_tree_address, ptr @slh_adrs_set_type_and_clear, ptr @slh_adrs_set_keypair_address, ptr @slh_adrs_copy_keypair_address, ptr @slh_adrs_set_chain_address, ptr @slh_adrs_set_chain_address, ptr @slh_adrs_set_hash_address, ptr @slh_adrs_set_hash_address, ptr @slh_adrs_zero, ptr @slh_adrs_copy }, %struct.slh_adrs_func_st { ptr @slh_adrsc_set_layer_address, ptr @slh_adrsc_set_tree_address, ptr @slh_adrsc_set_type_and_clear, ptr @slh_adrsc_set_keypair_address, ptr @slh_adrsc_copy_keypair_address, ptr @slh_adrsc_set_chain_address, ptr @slh_adrsc_set_chain_address, ptr @slh_adrsc_set_hash_address, ptr @slh_adrsc_set_hash_address, ptr @slh_adrsc_zero, ptr @slh_adrsc_copy }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @ossl_slh_get_adrs_fn(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i32 %0, 0
  %i.b = zext i1 %i.a to i64
  %i.c = getelementptr inbounds nuw [88 x i8], ptr @ossl_slh_get_adrs_fn.methods, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrs_set_layer_address(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.a, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrs_set_tree_address(ptr nofree noundef writeonly captures(none) initializes((8, 16)) %0, i64 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %i.b, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrs_set_type_and_clear(ptr nofree noundef writeonly captures(none) initializes((16, 32)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.b, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrs_set_keypair_address(ptr nofree noundef writeonly captures(none) initializes((20, 24)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.b, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @slh_adrs_copy_keypair_address(ptr nofree noundef writeonly captures(none) initializes((20, 24)) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 1
  store i32 %i.c, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrs_set_chain_address(ptr nofree noundef writeonly captures(none) initializes((24, 28)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.b, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrs_set_hash_address(ptr nofree noundef writeonly captures(none) initializes((28, 32)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.b, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrs_zero(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0) #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @slh_adrs_copy(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrsc_set_layer_address(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = trunc i32 %1 to i8
  store i8 %i.a, ptr %0, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrsc_set_tree_address(ptr nofree noundef writeonly captures(none) initializes((1, 9)) %0, i64 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %i.b, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrsc_set_type_and_clear(ptr nofree noundef writeonly captures(none) initializes((9, 22)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.a, ptr %i.b, align 1, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrsc_set_keypair_address(ptr nofree noundef writeonly captures(none) initializes((10, 14)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.b, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @slh_adrsc_copy_keypair_address(ptr nofree noundef writeonly captures(none) initializes((10, 14)) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.c = load i32, ptr %i.b, align 1
  store i32 %i.c, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrsc_set_chain_address(ptr nofree noundef writeonly captures(none) initializes((14, 18)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.b, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrsc_set_hash_address(ptr nofree noundef writeonly captures(none) initializes((18, 22)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.b, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @slh_adrsc_zero(ptr nofree noundef writeonly captures(none) initializes((0, 22)) %0) #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %0, i8 0, i64 22, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @slh_adrsc_copy(ptr nofree noundef writeonly captures(none) initializes((0, 22)) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %0, ptr noundef nonnull align 1 dereferenceable(22) %1, i64 22, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
end_hunk_0
