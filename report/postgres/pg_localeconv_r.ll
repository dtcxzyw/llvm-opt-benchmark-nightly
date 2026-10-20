Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_localeconv_r?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@table = internal unnamed_addr constant [18 x { i8, [3 x i8], i32, i64, i32, [4 x i8] }] [{ i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 1, [3 x i8] zeroinitializer, i32 1, i64 0, i32 65536, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 1, [3 x i8] zeroinitializer, i32 1, i64 8, i32 65537, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 1, [3 x i8] zeroinitializer, i32 1, i64 16, i32 65538, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 1, [3 x i8] zeroinitializer, i32 4, i64 24, i32 262144, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 1, [3 x i8] zeroinitializer, i32 4, i64 32, i32 262145, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 1, [3 x i8] zeroinitializer, i32 4, i64 40, i32 262146, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 1, [3 x i8] zeroinitializer, i32 4, i64 48, i32 262147, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 1, [3 x i8] zeroinitializer, i32 4, i64 56, i32 262148, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 1, [3 x i8] zeroinitializer, i32 4, i64 64, i32 262149, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 1, [3 x i8] zeroinitializer, i32 4, i64 72, i32 262150, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 0, [3 x i8] zeroinitializer, i32 4, i64 80, i32 262151, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 0, [3 x i8] zeroinitializer, i32 4, i64 81, i32 262152, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 0, [3 x i8] zeroinitializer, i32 4, i64 82, i32 262153, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 0, [3 x i8] zeroinitializer, i32 4, i64 83, i32 262154, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 0, [3 x i8] zeroinitializer, i32 4, i64 84, i32 262155, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 0, [3 x i8] zeroinitializer, i32 4, i64 85, i32 262156, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 0, [3 x i8] zeroinitializer, i32 4, i64 86, i32 262157, [4 x i8] zeroinitializer }, { i8, [3 x i8], i32, i64, i32, [4 x i8] } { i8 0, [3 x i8] zeroinitializer, i32 4, i64 87, i32 262158, [4 x i8] zeroinitializer }], align 16

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @pg_localeconv_free(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @free(ptr noundef %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @free(ptr noundef %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @free(ptr noundef %i.g) #8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @free(ptr noundef %i.i) #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @free(ptr noundef %i.k) #8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @free(ptr noundef %i.m) #8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @free(ptr noundef %i.o) #8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @free(ptr noundef %i.q) #8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @free(ptr noundef %i.s) #8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @pg_localeconv_r(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @__errno_location() #9     ; 2 uses
  store i32 2, ptr %i.a, align 4
  %i.b = tail call ptr @newlocale(i32 noundef 8127, ptr noundef %0, ptr noundef null) #8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @newlocale(i32 noundef 8127, ptr noundef %1, ptr noundef null) #8 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %i.f = tail call ptr @nl_langinfo_l(i32 noundef 65536, ptr noundef nonnull %i.d) #8
  %i.g = tail call noalias ptr @strdup(ptr noundef %i.f) #8 ; 2 uses
  %.not.not.peel.i = icmp eq ptr %i.g, null
  br i1 %.not.not.peel.i, label %.loopexit42.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %2, align 8
  %i.h = tail call ptr @nl_langinfo_l(i32 noundef 65537, ptr noundef nonnull %i.d) #8
  %i.i = tail call noalias ptr @strdup(ptr noundef %i.h) #8 ; 2 uses
  %.not.not.peel32.i = icmp eq ptr %i.i, null
  br i1 %.not.not.peel32.i, label %.loopexit42.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = tail call ptr @nl_langinfo_l(i32 noundef 65538, ptr noundef nonnull %i.d) #8
  %i.l = tail call noalias ptr @strdup(ptr noundef %i.k) #8 ; 2 uses
  %.not.not.peel37.i = icmp eq ptr %i.l, null
  br i1 %.not.not.peel37.i, label %.loopexit42.i, label %.peel.next36.i

.peel.next36.i:                                   ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i, %.peel.next36.i
  %indvars.iv.i = phi i64 [ 3, %.peel.next36.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr @table, i64 %indvars.iv.i ; 3 uses
  %3 = icmp samesign ult i64 %indvars.iv.i, 10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = tail call ptr @nl_langinfo_l(i32 noundef %i.p, ptr noundef nonnull %i.b) #8 ; 2 uses
  br i1 %3, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = tail call noalias ptr @strdup(ptr noundef %i.q) #8 ; 2 uses
  %.not.not.i = icmp eq ptr %i.r, null
  br i1 %.not.not.i, label %.loopexit42.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8
  br label %.critedge.i

bb.i:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.q, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 18
  br i1 %exitcond.not.i, label %pg_localeconv_from_langinfo.exit, label %bb.f, !llvm.loop !3

.loopexit42.i:                                    ; preds = %bb.g, %bb.e, %bb.d, %bb.c
  %i.z = load ptr, ptr %2, align 8
  tail call void @free(ptr noundef %i.z) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @free(ptr noundef %i.ab) #8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @free(ptr noundef %i.ad) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void @free(ptr noundef %i.af) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void @free(ptr noundef %i.ah) #8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void @free(ptr noundef %i.aj) #8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void @free(ptr noundef %i.al) #8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.an = load ptr, ptr %i.am, align 8
  tail call void @free(ptr noundef %i.an) #8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @free(ptr noundef %i.ap) #8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void @free(ptr noundef %i.ar) #8
  store i32 12, ptr %i.a, align 4
  br label %pg_localeconv_from_langinfo.exit

pg_localeconv_from_langinfo.exit:                 ; preds = %.critedge.i, %.loopexit42.i
  %i.as = phi i32 [ -1, %.loopexit42.i ], [ 0, %.critedge.i ]
  tail call void @freelocale(ptr noundef nonnull %i.b) #8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %pg_localeconv_from_langinfo.exit
  %.sink = phi ptr [ %i.d, %pg_localeconv_from_langinfo.exit ], [ %i.b, %bb.b ]
  %.0.ph = phi i32 [ %i.as, %pg_localeconv_from_langinfo.exit ], [ -1, %bb.b ]
  tail call void @freelocale(ptr noundef nonnull %.sink) #8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @freelocale(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @nl_langinfo_l(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = distinct !{!3, !4, !5}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"llvm.loop.peeled.count", i32 3}
end_hunk_0
