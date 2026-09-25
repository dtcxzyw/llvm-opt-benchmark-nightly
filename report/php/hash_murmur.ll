Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/hash_murmur?download=true
begin_hunk_0_@PHP_MURMUR3CInit:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3CUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %i.c = trunc i64 %2 to i32                      ; 2 uses
  %i.d = add i32 %i.b, %i.c
  store i32 %i.d, ptr %i.a, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @PMurHash128x86_Process(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %1, i32 noundef %i.c) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3CFinal(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  call void @PMurHash128x86_Result(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %i.d, ptr noundef nonnull %i.a) #5
  %i.e = load i32, ptr %i.a, align 16, !tbaa !18  ; 4 uses
  %i.f = lshr i32 %i.e, 24
  %i.g = trunc nuw i32 %i.f to i8
  store i8 %i.g, ptr %0, align 1, !tbaa !12
  %i.h = lshr i32 %i.e, 16
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !12
  %i.k = lshr i32 %i.e, 8
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.l, ptr %i.m, align 1, !tbaa !12
  %i.n = trunc i32 %i.e to i8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18   ; 4 uses
  %i.r = lshr i32 %i.q, 24
  %i.s = trunc nuw i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.s, ptr %i.t, align 1, !tbaa !12
  %i.u = lshr i32 %i.q, 16
  %i.v = trunc i32 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.v, ptr %i.w, align 1, !tbaa !12
  %i.x = lshr i32 %i.q, 8
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.y, ptr %i.z, align 1, !tbaa !12
  %i.aa = trunc i32 %i.q to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !18 ; 4 uses
  %i.ae = lshr i32 %i.ad, 24
  %i.af = trunc nuw i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !12
  %i.ah = lshr i32 %i.ad, 16
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !12
  %i.ak = lshr i32 %i.ad, 8
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.al, ptr %i.am, align 1, !tbaa !12
  %i.an = trunc i32 %i.ad to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !18 ; 4 uses
  %i.ar = lshr i32 %i.aq, 24
  %i.as = trunc nuw i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.as, ptr %i.at, align 1, !tbaa !12
  %i.au = lshr i32 %i.aq, 16
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !12
  %i.ax = lshr i32 %i.aq, 8
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !12
  %i.ba = trunc i32 %i.aq to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @PHP_MURMUR3CCopy(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 36)) %2) #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.d, ptr %i.e, align 4, !tbaa !20
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @PMurHash128x86_Process(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PMurHash128x86_Result(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3FInit(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @zend_hash_str_find(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i64 noundef 4) #5 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %zend_hash_str_find_deref.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12    ; 2 uses
  %i.d = icmp eq i8 %i.c, 10
  br i1 %i.d, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i8 [ %i.c, %bb.c ], [ %.pre, %bb.d ]
  %.0.i.ph = phi ptr [ %i.a, %bb.c ], [ %i.f, %bb.d ]
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %.0.i.ph, align 8, !tbaa !12 ; 2 uses
  store i64 %i.i, ptr %0, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !22
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str.3) #5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.i

zend_hash_str_find_deref.exit:                    ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %zend_hash_str_find_deref.exit, %bb.g, %bb.f, %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.k, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3FUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = trunc i64 %2 to i32                      ; 2 uses
  %i.d = add i32 %i.b, %i.c
  store i32 %i.d, ptr %i.a, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @PMurHash128x64_Process(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %1, i32 noundef %i.c) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_MURMUR3FFinal(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20
  call void @PMurHash128x64_Result(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %i.d, ptr noundef nonnull %i.a) #5
  %2 = load i64, ptr %i.a, align 16, !tbaa !22    ; 8 uses
  %3 = lshr i64 %2, 56
  %4 = trunc nuw i64 %3 to i8
  store i8 %4, ptr %0, align 1, !tbaa !12
  %5 = lshr i64 %2, 48
  %6 = trunc i64 %5 to i8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !12
  %8 = lshr i64 %2, 40
  %9 = trunc i64 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %9, ptr %10, align 1, !tbaa !12
  %11 = lshr i64 %2, 32
  %12 = trunc i64 %11 to i8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !12
  %14 = lshr i64 %2, 24
  %15 = trunc i64 %14 to i8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %15, ptr %16, align 1, !tbaa !12
  %17 = lshr i64 %2, 16
  %18 = trunc i64 %17 to i8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %18, ptr %19, align 1, !tbaa !12
  %20 = lshr i64 %2, 8
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %21, ptr %22, align 1, !tbaa !12
  %23 = trunc i64 %2 to i8
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %23, ptr %24, align 1, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %25 = load i64, ptr %i.e, align 8, !tbaa !22    ; 8 uses
  %26 = lshr i64 %25, 56
  %27 = trunc nuw i64 %26 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %27, ptr %i.f, align 1, !tbaa !12
  %28 = lshr i64 %25, 48
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %29, ptr %30, align 1, !tbaa !12
  %31 = lshr i64 %25, 40
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %32, ptr %33, align 1, !tbaa !12
  %34 = lshr i64 %25, 32
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %35, ptr %36, align 1, !tbaa !12
  %37 = lshr i64 %25, 24
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %38, ptr %39, align 1, !tbaa !12
  %40 = lshr i64 %25, 16
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %41, ptr %42, align 1, !tbaa !12
  %43 = lshr i64 %25, 8
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %44, ptr %45, align 1, !tbaa !12
  %46 = trunc i64 %25 to i8
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %46, ptr %47, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @PHP_MURMUR3FCopy(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 36)) %2) #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.d, ptr %i.e, align 8, !tbaa !20
  ret i32 0
}

declare void @PMurHash128x64_Process(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PMurHash128x64_Result(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_str_find(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8}
!15 = !{!14, !9, i64 0}
!16 = !{!14, !9, i64 4}
!17 = !{!14, !9, i64 8}
!18 = !{!9, !9, i64 0}
!19 = !{!"", !8, i64 0, !8, i64 16, !9, i64 32}
!20 = !{!19, !9, i64 32}
!21 = !{!"long", !8, i64 0}
!22 = !{!21, !21, i64 0}
end_hunk_0
