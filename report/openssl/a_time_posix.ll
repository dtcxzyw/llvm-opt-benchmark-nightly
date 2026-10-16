Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/a_time_posix?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@OPENSSL_posix_to_tm:bb.a
  %i.s = trunc nsw i64 %i.r to i32                ; 2 uses
  %i.t = mul nsw i32 %i.s, 5
  %.lhs.trunc66.i = add nsw i32 %i.t, 2
  %i.u = sdiv i32 %.lhs.trunc66.i, 153            ; 2 uses
  %i.v = icmp slt i64 %i.r, 306
  %.v.i = select i1 %i.v, i32 3, i32 -9
  %i.w = add nsw i32 %i.u, %.v.i                  ; 2 uses
  %i.x = icmp slt i32 %i.w, 3
  %i.y = zext i1 %i.x to i32
  %i.z = mul nsw i32 %i.u, 153
  %.neg50.lhs.trunc.i = add nsw i32 %i.z, 2
  %.neg5068.i = sdiv i32 %.neg50.lhs.trunc.i, -5
  %i.aa = add nsw i32 %i.s, 1
  %i.ab = add nsw i32 %i.aa, %.neg5068.i
  %.lhs.trunc.i = trunc nuw nsw i64 %.0.i to i32  ; 2 uses
  %i.ac = udiv i32 %.lhs.trunc.i, 3600
  %i.ad = urem i32 %.lhs.trunc.i, 3600
  %.lhs.trunc53.i = trunc nuw nsw i32 %i.ad to i16 ; 2 uses
  %i.ae = udiv i16 %.lhs.trunc53.i, 60
  %.zext54.i = zext nneg i16 %i.ae to i32
  %i.af = urem i16 %.lhs.trunc53.i, 60
  %.zext56.i = zext nneg i16 %i.af to i32
  %i.ag = add nsw i32 %i.q, -1900
  %spec.select = add nsw i32 %i.ag, %i.p
  %i.ah = add nsw i32 %spec.select, %i.y
  %i.ai = add nsw i32 %i.w, -1
  store i32 %.zext56.i, ptr %1, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.zext54.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !11
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ac, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !11
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ab, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !11
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.ai, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !11
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.ah, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !11
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.0..sroa_idx, i8 0, i64 32, i1 false)
  br label %utc_from_posix_time.exit.thread

utc_from_posix_time.exit.thread:                  ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @ossl_asn1_time_tm_to_time_t(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @OPENSSL_tm_to_posix(ptr noundef %0, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.c, ptr %1, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @ossl_asn1_time_time_t_to_tm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 56)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !10
  %i.b = tail call i32 @OPENSSL_posix_to_tm(i64 noundef %i.a, ptr noundef %1)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @OPENSSL_timegm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @OPENSSL_tm_to_posix(ptr noundef readonly %0, ptr noundef nonnull %i.a)
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %ossl_asn1_time_tm_to_time_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  store i64 %i.c, ptr %1, align 8, !tbaa !10
  br label %ossl_asn1_time_tm_to_time_t.exit

ossl_asn1_time_tm_to_time_t.exit:                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define ptr @OPENSSL_gmtime(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 56)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !10
  %i.b = tail call range(i32 0, 2) i32 @OPENSSL_posix_to_tm(i64 noundef %i.a, ptr noundef %1)
  %.not = icmp eq i32 %i.b, 0
  %. = select i1 %.not, ptr null, ptr %1
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @OPENSSL_gmtime_adj(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @OPENSSL_tm_to_posix(ptr noundef %0, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = mul nsw i64 %i.c, 86400
  %i.e = load i64, ptr %i.a, align 8, !tbaa !10
  %i.f = add nsw i64 %i.e, %i.d                   ; 5 uses
  %i.g = icmp sgt i64 %i.f, 0
  %i.h = sub nuw nsw i64 9223372036854775807, %i.f
  %i.i = icmp sgt i64 %2, %i.h
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i64 %i.f, 0
  %i.k = sub nsw i64 -9223372036854775808, %i.f
  %i.l = icmp slt i64 %2, %i.k
  %or.cond11 = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i64 %i.f, %2
  %i.n = tail call i32 @OPENSSL_posix_to_tm(i64 noundef %i.m, ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @OPENSSL_gmtime_diff(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = call i32 @OPENSSL_tm_to_posix(ptr noundef %3, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @OPENSSL_tm_to_posix(ptr noundef %2, ptr noundef nonnull %i.b)
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !10
  %i.f = load i64, ptr %i.b, align 8, !tbaa !10
  %i.g = sub nsw i64 %i.e, %i.f                   ; 2 uses
  %i.h = sdiv i64 %i.g, 86400
  %i.i = srem i64 %i.g, 86400
  %.not13 = icmp eq ptr %1, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = trunc nsw i64 %i.i to i32
  store i32 %i.j, ptr %1, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not14 = icmp eq ptr %0, null
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = trunc i64 %i.h to i32
  store i32 %i.k, ptr %0, align 4, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_posix_to_asn1_time(i64 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %3 = add i64 %0, -253402300800
  %4 = icmp ult i64 %3, -315569520000
  br i1 %4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %5 = sdiv i64 %0, 86400
  %6 = srem i64 %0, 86400                         ; 4 uses
  %7 = icmp slt i64 %6, 0
  %8 = add nsw i64 %6, 86400
  %.lobit.i.i = ashr i64 %6, 63
  %.040.i.i = add nsw i64 %.lobit.i.i, %5         ; 3 uses
  %.0.i.i = select i1 %7, i64 %8, i64 %6
  %9 = add nsw i64 %.040.i.i, 719468              ; 2 uses
  %10 = icmp sgt i64 %.040.i.i, -719468
  %11 = add nuw nsw i64 %.040.i.i, 573372
  %12 = select i1 %10, i64 %9, i64 %11
  %.lhs.trunc57.i.i = trunc nsw i64 %12 to i32
  %13 = sdiv i32 %.lhs.trunc57.i.i, 146097        ; 2 uses
  %.sext.i.i = sext i32 %13 to i64
  %.neg.i.i = mul nsw i64 %.sext.i.i, -146097
  %14 = add nsw i64 %.neg.i.i, %9                 ; 2 uses
  %.neg43.lhs.trunc.i.i = trunc nsw i64 %14 to i32 ; 4 uses
  %.neg4358.i.i = sdiv i32 %.neg43.lhs.trunc.i.i, -1460
  %15 = sdiv i32 %.neg43.lhs.trunc.i.i, 36524
  %.neg4461.i.i = sdiv i32 %.neg43.lhs.trunc.i.i, -146096
  %16 = add nsw i32 %.neg4358.i.i, %.neg43.lhs.trunc.i.i
  %17 = add nsw i32 %16, %15
  %.lhs.trunc62.i.i = add nsw i32 %17, %.neg4461.i.i ; 3 uses
  %18 = sdiv i32 %.lhs.trunc62.i.i, 365           ; 2 uses
  %.sext63.i.i = sext i32 %18 to i64
  %19 = mul nsw i32 %13, 400
  %.neg46.i.i = mul nsw i64 %.sext63.i.i, -365
  %.neg4764.i.i = sdiv i32 %.lhs.trunc62.i.i, -1460
  %.neg47.sext.i.i = sext i32 %.neg4764.i.i to i64
  %.neg45.neg65.i.i = sdiv i32 %.lhs.trunc62.i.i, 36500
  %.neg45.neg.sext.i.i = sext i32 %.neg45.neg65.i.i to i64
  %.neg48.i.i = add nsw i64 %14, %.neg47.sext.i.i
  %.neg49.i.i = add nsw i64 %.neg48.i.i, %.neg45.neg.sext.i.i
  %20 = add nsw i64 %.neg49.i.i, %.neg46.i.i      ; 2 uses
  %21 = trunc nsw i64 %20 to i32                  ; 2 uses
  %22 = mul nsw i32 %21, 5
  %.lhs.trunc66.i.i = add nsw i32 %22, 2
  %23 = sdiv i32 %.lhs.trunc66.i.i, 153           ; 2 uses
  %24 = icmp slt i64 %20, 306
  %.v.i.i = select i1 %24, i32 3, i32 -9
  %25 = add nsw i32 %23, %.v.i.i                  ; 2 uses
  %26 = icmp slt i32 %25, 3
  %27 = zext i1 %26 to i32
  %28 = mul nsw i32 %23, 153
  %.neg50.lhs.trunc.i.i = add nsw i32 %28, 2
  %.neg5068.i.i = sdiv i32 %.neg50.lhs.trunc.i.i, -5
  %29 = add nsw i32 %21, 1
  %30 = add nsw i32 %29, %.neg5068.i.i
  %.lhs.trunc.i.i = trunc nuw nsw i64 %.0.i.i to i32 ; 2 uses
  %31 = udiv i32 %.lhs.trunc.i.i, 3600
  %32 = urem i32 %.lhs.trunc.i.i, 3600
  %.lhs.trunc53.i.i = trunc nuw nsw i32 %32 to i16 ; 2 uses
  %33 = udiv i16 %.lhs.trunc53.i.i, 60
  %.zext54.i.i = zext nneg i16 %33 to i32
  %34 = urem i16 %.lhs.trunc53.i.i, 60
  %.zext56.i.i = zext nneg i16 %34 to i32
  %35 = add nsw i32 %19, -1900
  %spec.select.i = add nsw i32 %35, %18
  %36 = add nsw i32 %spec.select.i, %27
  %37 = add nsw i32 %25, -1
  store i32 %.zext56.i.i, ptr %2, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.zext54.i.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !11
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %31, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %30, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !11
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %37, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %36, ptr %.sroa.11.0..sroa_idx.i, align 4, !tbaa !11
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.0..sroa_idx.i, i8 0, i64 32, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  %i.b = call ptr @ossl_asn1_time_from_tm(ptr noundef %i.a, ptr noundef nonnull %2, i32 noundef -1) #6 ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !21
  %i.c = icmp ne ptr %i.b, null
  %. = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.0
}

declare ptr @ossl_asn1_time_from_tm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!8, !8, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"tm", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !8, i64 40, !12, i64 48}
!14 = !{!13, !5, i64 20}
!15 = !{!13, !5, i64 16}
!16 = !{!13, !5, i64 12}
!17 = !{!13, !5, i64 8}
!18 = !{!13, !5, i64 4}
!19 = !{!13, !5, i64 0}
!20 = !{!"p1 _ZTS14asn1_string_st", !9, i64 0}
!21 = !{!20, !20, i64 0}
end_hunk_0
