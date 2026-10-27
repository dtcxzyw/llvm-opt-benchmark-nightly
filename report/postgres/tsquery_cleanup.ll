Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tsquery_cleanup?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@clean_stopword_intree:bb.a

bb.l:                                             ; preds = %bb.j
  %i.ah = load i32, ptr %i.c, align 4
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 %i.ah)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge58 = phi i32 [ %i.ai, %bb.l ], [ %i.ag, %bb.k ] ; 2 uses
  store i32 %storemerge58, ptr %2, align 4
  store i32 %storemerge58, ptr %1, align 4
  tail call fastcc void @freetree(ptr noundef nonnull %0)
  br label %bb.v

bb.n:                                             ; preds = %bb.i
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load i32, ptr %i.a, align 4
  %i.ak = add i32 %i.aj, %i.z
  %i.al = load i32, ptr %i.c, align 4
  %i.am = add i32 %i.ak, %i.al
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.an = load i32, ptr %i.c, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge57 = phi i32 [ %i.an, %bb.p ], [ %i.am, %bb.o ]
  store i32 %storemerge57, ptr %1, align 4
  %storemerge56 = load i32, ptr %i.d, align 4
  store i32 %storemerge56, ptr %2, align 4
  %i.ao = load ptr, ptr %i.p, align 8
  tail call void @pfree(ptr noundef nonnull %0) #6
  br label %bb.v

bb.r:                                             ; preds = %bb.h
  br i1 %i.ac, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ap = load i32, ptr %i.b, align 4             ; 2 uses
  %i.aq = add i32 %i.ap, %i.z
  %i.ar = load i32, ptr %i.d, align 4
  %i.as = add i32 %i.aq, %i.ar
  %storemerge = select i1 %i.v, i32 %i.as, i32 %i.ap
  %.sink = load i32, ptr %i.a, align 4
  store i32 %.sink, ptr %1, align 4
  store i32 %storemerge, ptr %2, align 4
  %i.at = load ptr, ptr %0, align 8
  tail call void @pfree(ptr noundef nonnull %0) #6
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  br i1 %i.v, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.au = load i32, ptr %i.b, align 4
  %i.av = load i32, ptr %i.c, align 4
  %i.aw = add i32 %i.av, %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = trunc i32 %i.aw to i16
  %i.ba = add i16 %i.ay, %i.az
  store i16 %i.ba, ptr %i.ax, align 2
  %i.bb = load i32, ptr %i.a, align 4
  store i32 %i.bb, ptr %1, align 4
  %i.bc = load i32, ptr %i.d, align 4
  store i32 %i.bc, ptr %2, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u, %bb.q, %bb.m
  %.054 = phi ptr [ null, %bb.m ], [ %i.ao, %bb.q ], [ %i.at, %bb.s ], [ %0, %bb.u ], [ %0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.d, %bb.a, %bb.v, %bb.e, %bb.b
  %.1 = phi ptr [ %.054, %bb.v ], [ null, %bb.b ], [ %0, %bb.a ], [ null, %bb.e ], [ %0, %bb.d ]
  ret ptr %.1
}

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @calcstrlen(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %accumulator.tr.lcssa = phi i32 [ 0, %bb.a ], [ %i.p, %tailrecurse ]
  %.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.r, %tailrecurse ]
  %i.e = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 4095
  %i.h = add nuw nsw i32 %i.g, 1
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.i = phi ptr [ %i.r, %tailrecurse ], [ %i.b, %bb.a ]
  %.tr11 = phi ptr [ %i.o, %tailrecurse ], [ %0, %bb.a ] ; 2 uses
  %accumulator.tr10 = phi i32 [ %i.p, %tailrecurse ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr11, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call fastcc i32 @calcstrlen(ptr noundef %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %.not = icmp eq i8 %i.n, 1
  br i1 %.not, label %.loopexit, label %tailrecurse

tailrecurse:                                      ; preds = %.lr.ph
  %i.o = load ptr, ptr %.tr11, align 8            ; 2 uses
  %i.p = add i32 %i.l, %accumulator.tr10          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = load i8, ptr %i.r, align 4
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %tailrecurse._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %tailrecurse._crit_edge
  %accumulator.tr8 = phi i32 [ %accumulator.tr.lcssa, %tailrecurse._crit_edge ], [ %accumulator.tr10, %.lr.ph ]
  %.0 = phi i32 [ %i.h, %tailrecurse._crit_edge ], [ %i.l, %.lr.ph ]
  %accumulator.ret.tr = add i32 %.0, %accumulator.tr8
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @check_stack_depth() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @plainnode(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @check_stack_depth() #6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 10 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.b, %i.d
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = shl i32 %i.b, 1                          ; 2 uses
  store i32 %i.f, ptr %i.c, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = mul nsw i64 %i.g, 12
  %i.i = tail call ptr @repalloc(ptr noundef %.pre, i64 noundef %i.h) #6 ; 2 uses
  store ptr %i.i, ptr %0, align 8
  %.pre27 = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ %.pre27, %bb.b ], [ %i.b, %bb.a ]
  %i.k = phi ptr [ %i.i, %bb.b ], [ %.pre, %bb.a ]
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [12 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false)
  %i.p = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.a, align 4
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.a, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8
  %i.y = load i32, ptr %i.a, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.x, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 1, ptr %i.ab, align 4
  %i.ac = load i32, ptr %i.a, align 4
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.a, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = load ptr, ptr %i.ae, align 8
  tail call fastcc void @plainnode(ptr noundef %0, ptr noundef %2)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.a, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call fastcc void @plainnode(ptr noundef %0, ptr noundef %i.ai)
  %i.aj = load i32, ptr %i.a, align 4
  %i.ak = sub i32 %i.aj, %i.af
  %i.al = load ptr, ptr %0, align 8
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [12 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.ak, ptr %i.ao, align 4
  %3 = load ptr, ptr %1, align 8
  tail call fastcc void @plainnode(ptr noundef %0, ptr noundef %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  tail call void @pfree(ptr noundef nonnull %1) #6
  ret void
}

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @freetree(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @check_stack_depth() #6
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @freetree(ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @freetree(ptr noundef nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @pfree(ptr noundef nonnull %0) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
end_hunk_0
