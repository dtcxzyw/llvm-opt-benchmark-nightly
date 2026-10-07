Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/ogg_helper?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @simple_ogg_page__init(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @simple_ogg_page__clear(ptr nofree noundef captures(none) initializes((8, 16), (24, 32)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @simple_ogg_page__get_at(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = icmp eq ptr %3, null
  br i1 %i.c, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 %3(ptr noundef %0, i64 noundef %1, ptr noundef %5) #10
  switch i32 %i.d, label %bb.s [
    i32 0, label %bb.d
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !17
  store i32 5, ptr %i.e, align 8, !tbaa !25
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef dereferenceable_or_null(282) ptr @malloc(i64 noundef 282) #11 ; 3 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !12
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %0, align 8, !tbaa !17
  store i32 8, ptr %i.h, align 8, !tbaa !25
  br label %bb.s

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %.01528.i = phi ptr [ %.116.i, %bb.h ], [ %i.f, %bb.d ] ; 2 uses
  %.01827.i = phi i64 [ %.119.i, %bb.h ], [ 27, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %.01827.i, ptr %i.a, align 8, !tbaa !26
  %i.i = call i32 %4(ptr noundef %0, ptr noundef %.01528.i, ptr noundef nonnull %i.a, ptr noundef %5) #10, !inline_history !30
  switch i32 %i.i, label %.thread.sink.split.i [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 3, label %full_read_.exit.thread
  ]

bb.f:                                             ; preds = %.lr.ph.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !26
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread.sink.split.i, label %bb.h

.thread.sink.split.i:                             ; preds = %bb.g, %.lr.ph.i
  %.sink.i = phi i32 [ 2, %bb.g ], [ 5, %.lr.ph.i ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !17
  store i32 %.sink.i, ptr %i.m, align 8, !tbaa !25
  br label %full_read_.exit.thread

full_read_.exit.thread:                           ; preds = %.lr.ph.i, %.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.s

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i = phi i64 [ %i.j, %bb.f ], [ %i.k, %bb.g ] ; 2 uses
  %.116.i = getelementptr inbounds nuw i8, ptr %.01528.i, i64 %.pn.i
  %.119.i = sub i64 %.01827.i, %.pn.i             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not.i = icmp eq i64 %.119.i, 0
  br i1 %.not.i, label %full_read_.exit, label %.lr.ph.i

full_read_.exit:                                  ; preds = %bb.h
  %i.n = load ptr, ptr %2, align 8, !tbaa !12     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 26 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !31
  %i.q = zext i8 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 27
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !27
  %i.t = load i32, ptr %i.n, align 1
  %i.u = icmp ne i32 %i.t, 1399285583
  %i.v = zext i1 %i.u to i32
  %.not55 = icmp eq i32 %i.v, 0
  br i1 %.not55, label %bb.i, label %bb.l

bb.i:                                             ; preds = %full_read_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !31
  %6 = and i8 %i.x, 1
  %.not56 = icmp eq i8 %6, 0
  br i1 %.not56, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.z = load i64, ptr %i.y, align 1
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not58 = icmp eq i32 %i.ab, 0
  br i1 %.not58, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.o, align 1, !tbaa !31   ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %full_read_.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !17
  store i32 2, ptr %i.ae, align 8, !tbaa !25
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 27
  %i.ag = zext i8 %i.ac to i64
  %i.ah = call fastcc i32 @full_read_(ptr noundef %0, ptr noundef nonnull %i.af, i64 noundef %i.ag, ptr noundef %4, ptr noundef %5)
  %.not59 = icmp eq i32 %i.ah, 0
  br i1 %.not59, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.ai = load ptr, ptr %2, align 8, !tbaa !12    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 26
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !31
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  %.not6169.not = icmp eq i32 %i.am, 0
  br i1 %.not6169.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.an = add nsw i32 %i.al, -1
  %wide.trip.count = zext i32 %i.am to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.ao = add nuw i64 %indvars.iv, 27
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !31
  %.not60 = icmp eq i8 %i.ar, -1
  br i1 %.not60, label %bb.n, label %.thread

.thread:                                          ; preds = %.lr.ph
  %i.as = load ptr, ptr %0, align 8, !tbaa !17
  store i32 2, ptr %i.as, align 8, !tbaa !25
  br label %bb.s

bb.n:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.n, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.an, %bb.n ] ; 2 uses
  %i.at = mul nsw i32 %.0.lcssa, 255
  %i.au = add nsw i32 %.0.lcssa, 27
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !31
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nsw i32 %i.at, %i.ay
  %i.ba = zext i32 %i.az to i64                   ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !28
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bc = call noalias noundef ptr @malloc(i64 noundef %spec.select.i) #11 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !13
  %i.be = icmp eq ptr %i.bc, null
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.bf = load ptr, ptr %0, align 8, !tbaa !17
  store i32 8, ptr %i.bf, align 8, !tbaa !25
  br label %bb.s

bb.p:                                             ; preds = %._crit_edge
  %i.bg = call fastcc i32 @full_read_(ptr noundef %0, ptr noundef nonnull %i.bc, i64 noundef %i.ba, ptr noundef %4, ptr noundef %5)
  %.not62 = icmp eq i32 %i.bg, 0
  br i1 %.not62, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr %2, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 22
  %i.bj = load i32, ptr %i.bi, align 1
  store i32 %i.bj, ptr %i.b, align 4
  call void @ogg_page_checksum_set(ptr noundef nonnull %2) #10
  %i.bk = load ptr, ptr %2, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 22
  %i.bm = load i32, ptr %i.b, align 4
  %i.bn = load i32, ptr %i.bl, align 1
  %i.bo = icmp ne i32 %i.bm, %i.bn
  %i.bp = zext i1 %i.bo to i32
  %.not64 = icmp eq i32 %i.bp, 0
  br i1 %.not64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %0, align 8, !tbaa !17
  store i32 2, ptr %i.bq, align 8, !tbaa !25
  br label %bb.s

bb.s:                                             ; preds = %.thread, %full_read_.exit.thread, %bb.q, %bb.p, %bb.m, %bb.c, %bb.b, %bb.a, %bb.r, %bb.o, %bb.l, %bb.e
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.l ], [ 0, %bb.o ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %.thread ], [ 0, %full_read_.exit.thread ], [ 0, %bb.b ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @full_read_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %.not26 = icmp eq i64 %2, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01528 = phi ptr [ %.116, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.01827 = phi i64 [ %.119, %bb.d ], [ %2, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 %.01827, ptr %i.a, align 8, !tbaa !26
  %i.b = call i32 %3(ptr noundef %0, ptr noundef %.01528, ptr noundef nonnull %i.a, ptr noundef %4) #10
  switch i32 %i.b, label %.thread.sink.split [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %.thread
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.c = load i64, ptr %i.a, align 8, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.d = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.thread.sink.split, label %bb.d

.thread.sink.split:                               ; preds = %.lr.ph, %bb.c
  %.sink = phi i32 [ 2, %bb.c ], [ 5, %.lr.ph ]
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  store i32 %.sink, ptr %i.f, align 8, !tbaa !25
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.thread.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pn = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %.116 = getelementptr inbounds nuw i8, ptr %.01528, i64 %.pn
  %.119 = sub i64 %.01827, %.pn                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not = icmp eq i64 %.119, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.d, %bb.a, %.thread
  %.2 = phi i32 [ 0, %.thread ], [ 1, %bb.a ], [ 1, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @ogg_page_checksum_set(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @simple_ogg_page__set_at(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %3(ptr noundef %0, i64 noundef %1, ptr noundef %5) #10
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %.sink.split
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @ogg_page_checksum_set(ptr noundef %2) #10
  %i.c = load ptr, ptr %2, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27
  %i.f = tail call i32 %4(ptr noundef %0, ptr noundef %i.c, i64 noundef %i.e, i32 noundef 0, i32 noundef 0, ptr noundef %5) #10
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call i32 %4(ptr noundef %0, ptr noundef %i.h, i64 noundef %i.j, i32 noundef 0, i32 noundef 0, ptr noundef %5) #10
  %.not23 = icmp eq i32 %i.k, 0
  br i1 %.not23, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  store i32 5, ptr %i.l, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"", !9, i64 0, !10, i64 8, !9, i64 16, !10, i64 24}
!12 = !{!11, !9, i64 0}
!13 = !{!11, !9, i64 16}
!14 = !{!"p1 _ZTS28FLAC__StreamEncoderProtected", !8, i64 0}
!15 = !{!"p1 _ZTS26FLAC__StreamEncoderPrivate", !8, i64 0}
!16 = !{!"", !14, i64 0, !15, i64 8}
!17 = !{!16, !14, i64 0}
!18 = !{!"any p2 pointer", !8, i64 0}
!19 = !{!"p2 _ZTS20FLAC__StreamMetadata", !18, i64 0}
!20 = !{!"p1 int", !8, i64 0}
!21 = !{!"p1 long", !8, i64 0}
!22 = !{!"", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !20, i64 32, !21, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !4, i64 80, !5, i64 364, !5, i64 368, !5, i64 372, !10, i64 376, !10, i64 384, !10, i64 392, !10, i64 400}
!23 = !{!"FLAC__OggEncoderAspect", !10, i64 0, !5, i64 8, !22, i64 16, !11, i64 424, !5, i64 456, !5, i64 460, !10, i64 464, !10, i64 472}
!24 = !{!"FLAC__StreamEncoderProtected", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !4, i64 44, !5, i64 556, !5, i64 560, !5, i64 564, !5, i64 568, !5, i64 572, !5, i64 576, !5, i64 580, !5, i64 584, !10, i64 592, !5, i64 600, !19, i64 608, !5, i64 616, !5, i64 620, !10, i64 624, !10, i64 632, !10, i64 640, !23, i64 648}
!25 = !{!24, !5, i64 0}
!26 = !{!10, !10, i64 0}
!27 = !{!11, !10, i64 8}
!28 = !{!11, !10, i64 24}
!29 = distinct !{!29, !32}
!30 = !{ptr @full_read_}
!31 = !{!4, !4, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
end_hunk_0
