Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/splay2?download=true
inline.NumInlined: 8
begin_hunk_0_@CHtraverse:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.tr9, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @CHfree_tree(ptr noundef captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %common.ret4, label %bb.b

common.ret4:                                      ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @CHfree_tree(ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  tail call void @CHfree_tree(ptr noundef %i.d)
  tail call void @free(ptr noundef nonnull %0) #15
  br label %common.ret4
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @CHcreate_node(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #16 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 0) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @before(ptr noundef %0) #15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = tail call ptr @next(ptr noundef %0) #15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i64, ptr %i.d, align 4
  %i.i = load i64, ptr %i.e, align 4
  %i.j = load i64, ptr %i.g, align 4
  %i.k = tail call { double, double } @centre(i64 %i.h, i64 %i.i, i64 %i.j) #15 ; 2 uses
  %i.l = extractvalue { double, double } %i.k, 0
  %i.m = extractvalue { double, double } %i.k, 1
  %i.n = load i64, ptr %i.e, align 4
  %i.o = tail call double @radius2(i64 %i.n, double %i.l, double %i.m) #15
  %i.p = tail call ptr @before(ptr noundef %0) #15
  %i.q = tail call ptr @next(ptr noundef %0) #15
  %i.r = tail call double @angle(ptr noundef %i.p, ptr noundef %0, ptr noundef %i.q) #15
  %i.s = load i32, ptr %0, align 8, !tbaa !30
  store double %i.o, ptr %i.a, align 8, !tbaa !31
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.r, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.s, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.t, align 8, !tbaa !25
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare { double, double } @centre(i64, i64, i64) local_unnamed_addr #11

declare ptr @before(ptr noundef) local_unnamed_addr #11

declare ptr @next(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare double @radius2(i64, double, double) local_unnamed_addr #11

declare double @angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @CHinit() local_unnamed_addr #12 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @CHinsert(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @CHcreate_node(ptr noundef %1) ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !22
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @CHsplay(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.key) align 8 %i.a) ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.f = load double, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %i.g = fcmp ogt double %i.e, %i.f
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = fcmp oeq double %i.e, %i.f
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !17 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !17 ; 2 uses
  %i.m = fcmp olt double %i.j, %i.l
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = fcmp oeq double %i.j, %i.l
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !18
  %i.s = icmp sgt i32 %i.p, %i.r
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.u, ptr %i.v, align 8, !tbaa !20
  %.not41 = icmp eq ptr %i.u, null
  br i1 %.not41, label %bb.i, label %.sink.split

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.x, ptr %i.y, align 8, !tbaa !19
  %.not40 = icmp eq ptr %i.x, null
  br i1 %.not40, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.sink51 = phi ptr [ %i.u, %bb.g ], [ %i.x, %bb.h ]
  %.sink50.ph = phi i64 [ 48, %bb.g ], [ 40, %bb.h ]
  %.sink48.ph = phi i64 [ 40, %bb.g ], [ 48, %bb.h ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sink51, i64 32
  store ptr %i.a, ptr %i.z, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h, %bb.g
  %.sink50 = phi i64 [ 48, %bb.g ], [ 40, %bb.h ], [ %.sink50.ph, %.sink.split ]
  %.sink48 = phi i64 [ 40, %bb.g ], [ 48, %bb.h ], [ %.sink48.ph, %.sink.split ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink50
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sink48
  store ptr null, ptr %i.ac, align 8, !tbaa !22
  %i.ad = load ptr, ptr %0, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  ret ptr undef
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CHdelete_max(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %1 = alloca %struct.key, align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store <2 x double> <double f0x47EFFFFFE0000000, double 1.000000e+03>, ptr %1, align 16, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1000, ptr %i.a, align 16, !tbaa !32
  %i.b = load ptr, ptr %0, align 8, !tbaa !22
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @CHsplay(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.key) align 8 %1) ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !22
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %.sroa.3.0.copyload, %bb.d ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @CHdelete(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly byval(%struct.key) align 8 captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.key, align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.c = load ptr, ptr %0, align 8, !tbaa !22
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @CHsplay(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.key) align 8 %1) ; 0 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 6 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 6 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !22
  %i.j = icmp eq ptr %i.g, null                   ; 2 uses
  %i.k = icmp eq ptr %i.i, null                   ; 2 uses
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !22
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ne ptr %i.i, null
  %or.cond3 = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.m, align 8, !tbaa !21
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.n = icmp ne ptr %i.g, null
  %or.cond5 = select i1 %i.n, i1 %i.k, i1 false
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.g, ptr %0, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.o, align 8, !tbaa !21
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store <2 x double> <double f0x47EFFFFFE0000000, double 1.000000e+03>, ptr %2, align 16, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 1000, ptr %i.p, align 16, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.q, align 8, !tbaa !21
  %i.r = call ptr @CHsplay(ptr noundef nonnull %i.a, ptr noundef nonnull byval(%struct.key) align 8 %2) ; 0 uses
  store <2 x double> splat (double -1.000000e+00), ptr %2, align 16, !tbaa !31
  store i32 -1, ptr %i.p, align 16, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.s, align 8, !tbaa !21
  %i.t = call ptr @CHsplay(ptr noundef nonnull %i.b, ptr noundef nonnull byval(%struct.key) align 8 %2) ; 0 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.u, ptr %i.w, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.v, ptr %i.x, align 8, !tbaa !21
  store ptr %i.v, ptr %0, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.c
  tail call void @free(ptr noundef nonnull %i.e) #15
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { noreturn nounwind }

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
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"key", !10, i64 0, !10, i64 8, !5, i64 16}
!10 = !{!"double", !6, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"CHsplay_node", !13, i64 0, !16, i64 32, !16, i64 40, !16, i64 48}
!13 = !{!"CHsplay_element", !9, i64 0, !14, i64 24}
!14 = !{!"p1 _ZTS8CHpoints", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTS12CHsplay_node", !15, i64 0}
!17 = !{!12, !10, i64 8}
!18 = !{!12, !5, i64 16}
!19 = !{!12, !16, i64 48}
!20 = !{!12, !16, i64 40}
!21 = !{!12, !16, i64 32}
!22 = !{!16, !16, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!12, !14, i64 24}
!26 = !{!27, !5, i64 4}
!27 = !{!"CHpoints", !5, i64 0, !28, i64 4, !5, i64 12, !14, i64 16, !14, i64 24}
!28 = !{!"point", !5, i64 0, !5, i64 4}
!29 = !{!27, !5, i64 8}
!30 = !{!27, !5, i64 0}
!31 = !{!10, !10, i64 0}
!32 = !{!9, !5, i64 16}
!33 = !{!14, !14, i64 0}
end_hunk_0
