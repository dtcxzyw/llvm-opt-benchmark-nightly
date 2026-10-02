Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/mac8?download=true
inline.NumInlined: 79
inline.NumDeleted: 19
begin_hunk_0_@macaddr8_or:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = or i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = or i8 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  store i8 %i.as, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = or i8 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = ptrtoint ptr %i.g to i64
  ret i64 %i.ba
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @macaddr8_trunc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = tail call ptr @palloc0(i64 noundef 8) #9 ; 5 uses
  %i.e = load i8, ptr %i.c, align 1
  store i8 %i.e, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.g, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.j, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.m = ptrtoint ptr %i.d to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.l, i8 0, i64 5, i1 false)
  ret i64 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @macaddr8_set7bit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 8 uses
  %i.d = tail call ptr @palloc0(i64 noundef 8) #9 ; 9 uses
  %i.e = load i8, ptr %i.c, align 1
  %i.f = or i8 %i.e, 2
  store i8 %i.f, ptr %i.d, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.h, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.k, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.n = load i8, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.n, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.q = load i8, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 %i.q, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  store i8 %i.t, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.w = load i8, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i8 %i.w, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = ptrtoint ptr %i.d to i64
  ret i64 %i.ab
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @macaddrtomacaddr8(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = tail call ptr @palloc0(i64 noundef 8) #9 ; 9 uses
  %i.e = load i8, ptr %i.c, align 1
  store i8 %i.e, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.g, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.j, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 -1, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 -2, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.r = load i8, ptr %i.q, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i8 %i.r, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  store i8 %i.u, ptr %i.v, align 1
  %i.w = ptrtoint ptr %i.d to i64
  ret i64 %i.w
}

; Function Attrs: nounwind uwtable
define dso_local i64 @macaddr8tomacaddr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 8 uses
  %i.d = tail call ptr @palloc0(i64 noundef 6) #9 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.f = load i8, ptr %i.e, align 1
  %.not = icmp eq i8 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i8, ptr %i.g, align 1
  %.not19 = icmp eq i8 %i.h, -2
  br i1 %.not19, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = tail call zeroext i1 @errsave_start(ptr noundef %i.j, ptr noundef null) #9
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @errcode(i32 noundef 50331778) #9 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4) #9 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.5) #9 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.j, ptr noundef nonnull @.str.2, i32 noundef 559, ptr noundef nonnull @__func__.macaddr8tomacaddr) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.c, align 1
  store i8 %i.o, ptr %i.d, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.q, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.t, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.w = load i8, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.w, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = ptrtoint ptr %i.d to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i64 %.0
}

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #3

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hash_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @hash_bytes_extended(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !7}
!5 = distinct !{!5, !7}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, i1 false, !"pq_writeint8"}
!9 = distinct !{!9, !8, !"pq_writeint8: argument 0"}
!10 = distinct !{!10, i1 false, !"pq_writeint8"}
!11 = distinct !{!11, !10, !"pq_writeint8: argument 0"}
!12 = distinct !{!12, i1 false, !"pq_writeint8"}
!13 = distinct !{!13, !12, !"pq_writeint8: argument 0"}
!14 = distinct !{!14, i1 false, !"pq_writeint8"}
!15 = distinct !{!15, !14, !"pq_writeint8: argument 0"}
!16 = distinct !{!16, i1 false, !"pq_writeint8"}
!17 = distinct !{!17, !16, !"pq_writeint8: argument 0"}
!18 = distinct !{!18, i1 false, !"pq_writeint8"}
!19 = distinct !{!19, !18, !"pq_writeint8: argument 0"}
!20 = distinct !{!20, i1 false, !"pq_writeint8"}
!21 = distinct !{!21, !20, !"pq_writeint8: argument 0"}
!22 = distinct !{!22, i1 false, !"pq_writeint8"}
!23 = distinct !{!23, !22, !"pq_writeint8: argument 0"}
!24 = !{!9}
!25 = !{!11}
!26 = !{!13}
!27 = !{!15}
!28 = !{!17}
!29 = !{!19}
!30 = !{!21}
!31 = !{!23}
end_hunk_0
