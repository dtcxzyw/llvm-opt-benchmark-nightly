Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/select?download=true
begin_hunk_0_@select_add:bb.a
bb.g:                                             ; preds = %.critedge, %bb.a
  %i.ah = and i16 %3, 2
  %.not27 = icmp eq i16 %i.ah, 0
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = srem i32 %1, 64
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = sdiv i32 %1, 64
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = or i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %i.ap, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = and i16 %3, 4
  %.not28 = icmp eq i16 %i.as, 0
  br i1 %.not28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = srem i32 %1, 64
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 1, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = sdiv i32 %1, 64
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = or i64 %i.bb, %i.av
  store i64 %i.bc, ptr %i.ba, align 8
  br label %bb.k

bb.k:                                             ; preds = %select_resize.exit, %bb.j, %bb.i
  %.1 = phi i32 [ -1, %select_resize.exit ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @select_del(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i16 signext %2, i16 noundef signext %3, ptr nofree readnone captures(none) %4) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %i.c, %1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i16 %3, 2
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = srem i32 %1, 64
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = sdiv i32 %1, 64
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i
  store i64 %i.p, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = and i16 %3, 4
  %.not11 = icmp eq i16 %i.q, 0
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = srem i32 %1, 64
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = xor i64 %i.t, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = sdiv i32 %1, 64
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, %i.u
  store i64 %i.ab, ptr %i.z, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @select_dispatch(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @event_mm_realloc_(ptr noundef %i.i, i64 noundef %i.g) #7 ; 2 uses
  %.not60 = icmp eq ptr %i.j, null
  br i1 %.not60, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @event_mm_realloc_(ptr noundef %i.l, i64 noundef %i.g) #7 ; 2 uses
  %.not61 = icmp eq ptr %i.m, null
  br i1 %.not61, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.c
  store ptr %i.m, ptr %i.k, align 8
  store i32 0, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = sext i32 %i.s to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.o, ptr align 8 %i.q, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i32, ptr %i.r, align 4
  %i.z = sext i32 %i.y to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.x, i64 %i.z, i1 false)
  %i.aa = load i32, ptr %i.b, align 8             ; 4 uses
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not62 = icmp eq ptr %i.ad, null
  br i1 %.not62, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.af = tail call i32 %i.ae(i32 noundef 0, ptr noundef nonnull %i.ad) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.n, align 8
  %i.ah = load ptr, ptr %i.u, align 8
  %i.ai = tail call i32 @select(i32 noundef %i.ab, ptr noundef %i.ag, ptr noundef %i.ah, ptr noundef null, ptr noundef %1) #7 ; 2 uses
  %i.aj = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not63 = icmp eq ptr %i.aj, null
  br i1 %.not63, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.al = tail call i32 %i.ak(i32 noundef 0, ptr noundef nonnull %i.aj) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.am = icmp eq i32 %i.ai, -1
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = tail call ptr @__errno_location() #8
  %i.ao = load i32, ptr %i.an, align 4
  %.not69 = icmp eq i32 %i.ao, 4
  br i1 %.not69, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str) #7
  br label %.loopexit

bb.k:                                             ; preds = %bb.h
  %i.ap = load i32, ptr @event_debug_logging_mask_, align 4
  %.not64 = icmp eq i32 %i.ap, 0
  br i1 %.not64, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.select_dispatch, i32 noundef %i.ai) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ar = tail call i32 @evutil_weakrand_range_(ptr noundef nonnull %i.aq, i32 noundef %i.ab) #7
  %.not6570 = icmp slt i32 %i.aa, 0
  br i1 %.not6570, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.o
  %.05272 = phi i32 [ %spec.store.select, %bb.o ], [ %i.ar, %bb.m ] ; 2 uses
  %.05371 = phi i32 [ %i.bi, %bb.o ], [ 0, %bb.m ] ; 2 uses
  %i.as = add nsw i32 %.05272, 1
  %.not66 = icmp slt i32 %.05272, %i.aa
  %spec.store.select = select i1 %.not66, i32 %i.as, i32 0 ; 4 uses
  %i.at = load ptr, ptr %i.n, align 8
  %i.au = sdiv i32 %spec.store.select, 64
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = srem i32 %spec.store.select, 64
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw i64 1, %i.az                    ; 2 uses
  %i.bb = and i64 %i.ax, %i.ba
  %.not67 = icmp eq i64 %i.bb, 0                  ; 2 uses
  %i.bc = load ptr, ptr %i.u, align 8
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.av
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = and i64 %i.be, %i.ba
  %.not68 = icmp eq i64 %i.bf, 0                  ; 2 uses
  %i.bg = select i1 %.not68, i1 %.not67, i1 false
  br i1 %i.bg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %spec.select = select i1 %.not67, i16 0, i16 2  ; 2 uses
  %i.bh = or disjoint i16 %spec.select, 4
  %.151 = select i1 %.not68, i16 %spec.select, i16 %i.bh
  tail call void @evmap_io_active_(ptr noundef %0, i32 noundef %spec.store.select, i16 noundef signext %.151) #7
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %i.bi = add nuw i32 %.05371, 1
  %exitcond.not = icmp eq i32 %.05371, %i.aa
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !5

.loopexit:                                        ; preds = %bb.o, %bb.m, %bb.i, %bb.b, %bb.c, %bb.j
  %.1 = phi i32 [ -1, %bb.j ], [ -1, %bb.b ], [ 0, %bb.i ], [ -1, %bb.c ], [ 0, %bb.m ], [ 0, %bb.o ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal void @select_dealloc(ptr noundef %0) #0 {
bb.a:
  tail call void @evsig_dealloc_(ptr noundef %0) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @event_mm_free_(ptr noundef nonnull %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not13.i = icmp eq ptr %i.f, null
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @event_mm_free_(ptr noundef nonnull %i.f) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not14.i = icmp eq ptr %i.h, null
  br i1 %.not14.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @event_mm_free_(ptr noundef nonnull %i.h) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not15.i = icmp eq ptr %i.j, null
  br i1 %.not15.i, label %select_free_selectop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @event_mm_free_(ptr noundef nonnull %i.j) #7
  br label %select_free_selectop.exit

select_free_selectop.exit:                        ; preds = %bb.g, %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  tail call void @event_mm_free_(ptr noundef nonnull %i.b) #7
  ret void
}

declare ptr @event_mm_calloc_(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @evsig_init_(ptr noundef) local_unnamed_addr #2

declare i32 @evutil_weakrand_seed_(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @event_mm_realloc_(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @event_warn(ptr noundef, ...) local_unnamed_addr #2

declare void @event_mm_free_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare void @event_debugx_(ptr noundef, ...) local_unnamed_addr #2

declare i32 @evutil_weakrand_range_(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @evmap_io_active_(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare void @evsig_dealloc_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
end_hunk_0
