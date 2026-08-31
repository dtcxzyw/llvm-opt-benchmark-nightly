Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/fibo?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden range(i32 0, 2) i32 @tm_fiboTreeInit(ptr noundef initializes((40, 48)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %calloc = tail call dereferenceable_or_null(256) ptr @calloc(i64 1, i64 256) ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %calloc, ptr %i.a, align 8, !tbaa !8
  %i.b = icmp eq ptr %calloc, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %0, ptr %i.d, align 8, !tbaa !16
  store ptr %0, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.e, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @tm_fiboTreeExit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @tm_fiboTreeFree(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %0, ptr %i.b, align 8, !tbaa !16
  store ptr %0, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @tm_fiboTreeMin(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %.not100.i = icmp eq ptr %i.d, %0
  br i1 %.not100.i, label %.lr.ph107.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

.lr.ph107.preheader.i:                            ; preds = %bb.i, %bb.a
  %.083.lcssa.i = phi i32 [ 0, %bb.a ], [ %.285.i, %bb.i ] ; 2 uses
  %i.h = add nuw nsw i32 %.083.lcssa.i, 1         ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %.lr.ph107.i

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
  %.075103.i = phi ptr [ %i.f, %.lr.ph.i ], [ %.176.i, %bb.i ] ; 4 uses
  %.077102.i = phi ptr [ %i.d, %.lr.ph.i ], [ %.279.i, %bb.i ] ; 5 uses
  %.083101.i = phi i32 [ 0, %.lr.ph.i ], [ %.285.i, %bb.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.077102.i, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !20
  %i.k = ashr i32 %i.j, 1                         ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.l ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %.083101.i)
  store ptr %.077102.i, ptr %i.m, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.075103.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.s = tail call i32 %i.r(ptr noundef nonnull %i.n, ptr noundef nonnull %.077102.i) #8, !inline_history !22
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.178.i = phi ptr [ %i.u, %bb.e ], [ %.077102.i, %bb.d ] ; 5 uses
  %.0.i = phi ptr [ %.077102.i, %bb.e ], [ %i.n, %bb.d ] ; 9 uses
  store ptr null, ptr %i.m, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.x, ptr %i.z, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !20
  %i.ad = and i32 %i.ac, -2
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !20
  store ptr %.178.i, ptr %.0.i, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.178.i, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 3 uses
  %.not97.i = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %.178.i, i64 32 ; 3 uses
  br i1 %.not97.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !20
  %i.ai = add nsw i32 %i.ah, 2
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  store ptr %i.ak, ptr %i.w, align 8, !tbaa !19
  store ptr %i.af, ptr %i.v, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.0.i, ptr %i.al, align 8, !tbaa !23
  store ptr %.0.i, ptr %i.aj, align 8, !tbaa !19
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 2, ptr %i.ag, align 8, !tbaa !20
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !25
  store ptr %.0.i, ptr %i.w, align 8, !tbaa !19
  store ptr %.0.i, ptr %i.v, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.c
  %.285.i = phi i32 [ %spec.select.i, %bb.c ], [ %.083101.i, %bb.h ], [ %.083101.i, %bb.g ] ; 2 uses
  %.279.i = phi ptr [ %.075103.i, %bb.c ], [ %.178.i, %bb.h ], [ %.178.i, %bb.g ] ; 2 uses
  %.176.i = phi ptr [ %i.q, %bb.c ], [ %.075103.i, %bb.h ], [ %.075103.i, %bb.g ]
  %.not.i = icmp eq ptr %.279.i, %0
  br i1 %.not.i, label %.lr.ph107.preheader.i, label %bb.b, !llvm.loop !26

.lr.ph107.i:                                      ; preds = %bb.j, %.lr.ph107.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph107.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 3 uses
  %.not94.i = icmp eq ptr %i.an, null
  br i1 %.not94.i, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.lr.ph107.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %fiboTreeConsolidate.exit, label %.lr.ph107.i, !llvm.loop !28

.loopexit.i:                                      ; preds = %.lr.ph107.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ap = trunc nuw nsw i64 %indvars.iv.i to i32
  store ptr null, ptr %i.ao, align 8, !tbaa !21
  %.pre = add i32 %i.ap, 1                        ; 2 uses
  %.not95109.i = icmp sgt i32 %.pre, %.083.lcssa.i
  br i1 %.not95109.i, label %fiboTreeConsolidate.exit, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.loopexit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = sext i32 %.pre to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph112.i
  %indvars.iv120.i = phi i64 [ %i.ar, %.lr.ph112.i ], [ %indvars.iv.next121.i, %bb.o ] ; 2 uses
  %.1111.i = phi ptr [ %i.an, %.lr.ph112.i ], [ %.3.i, %bb.o ] ; 3 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv120.i ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21 ; 2 uses
  %.not96.i = icmp eq ptr %i.at, null
  br i1 %.not96.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.av = tail call i32 %i.au(ptr noundef nonnull %i.at, ptr noundef %.1111.i) #8, !inline_history !22
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2.i = phi ptr [ %i.ax, %bb.m ], [ %.1111.i, %bb.l ]
  store ptr null, ptr %i.as, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.3.i = phi ptr [ %.2.i, %bb.n ], [ %.1111.i, %bb.k ] ; 2 uses
  %indvars.iv.next121.i = add nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next121.i to i32
  %exitcond123.not.i = icmp eq i32 %i.h, %lftr.wideiv.i
  br i1 %exitcond123.not.i, label %fiboTreeConsolidate.exit, label %bb.k, !llvm.loop !29

fiboTreeConsolidate.exit:                         ; preds = %bb.j, %bb.o, %.loopexit.i
  %.1.lcssa.i = phi ptr [ %i.an, %.loopexit.i ], [ %.3.i, %bb.o ], [ null, %bb.j ]
  ret ptr %.1.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @tm_fiboTreeDel(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.d, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !16
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %i.k = phi ptr [ %.053, %bb.b ], [ %.pre, %.preheader ] ; 2 uses
  %.053 = phi ptr [ %i.n, %bb.b ], [ %i.i, %.preheader ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.053, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.053, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  store ptr null, ptr %.053, align 8, !tbaa !24
  store ptr %i.k, ptr %i.m, align 8, !tbaa !19
  store ptr %0, ptr %i.l, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.053, ptr %i.o, align 8, !tbaa !23
  store ptr %.053, ptr %i.j, align 8, !tbaa !16
  %.not57 = icmp eq ptr %i.n, %i.i
  br i1 %.not57, label %.loopexit, label %bb.b, !llvm.loop !30

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.p = icmp eq ptr %i.a, null
  br i1 %i.p, label %.thread, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !20   ; 3 uses
  %i.t = or i32 %i.s, 1
  %i.u = add nsw i32 %i.t, -2
  store i32 %i.u, ptr %i.r, align 8, !tbaa !20
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.w = icmp slt i32 %i.s, 4
  %i.x = select i1 %i.w, ptr null, ptr %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !25
  %i.z = and i32 %i.s, 1
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = icmp eq ptr %i.v, null
  %or.cond61 = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond61, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.ad = phi ptr [ %i.v, %.lr.ph ], [ %i.aq, %bb.d ] ; 4 uses
  %.062 = phi ptr [ %i.a, %.lr.ph ], [ %i.ad, %bb.d ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.062, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.062, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19 ; 3 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !23
  store ptr null, ptr %.062, align 8, !tbaa !24
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !19
  store ptr %0, ptr %i.ae, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.062, ptr %i.al, align 8, !tbaa !23
  store ptr %.062, ptr %i.ac, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !20 ; 3 uses
  %i.ao = or i32 %i.an, 1
  %i.ap = add nsw i32 %i.ao, -2
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !20
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.ar = icmp slt i32 %i.an, 4
  %i.as = select i1 %i.ar, ptr null, ptr %i.ag
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !25
  %i.au = and i32 %i.an, 1
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = icmp eq ptr %i.aq, null
  %or.cond = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.d, %bb.c, %.loopexit
  ret void
}

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !14, i64 40}
!9 = !{!"FiboTree_", !10, i64 0, !14, i64 40, !12, i64 48}
!10 = !{!"FiboNode_", !11, i64 0, !11, i64 8, !13, i64 16, !5, i64 32}
!11 = !{!"p1 _ZTS9FiboNode_", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"FiboLink_", !11, i64 0, !11, i64 8}
!14 = !{!"p2 _ZTS9FiboNode_", !15, i64 0}
!15 = !{!"any p2 pointer", !12, i64 0}
end_hunk_0
