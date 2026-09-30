Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/iso_8859_1?download=true
begin_hunk_0_@get_case_fold_codes_by_str:bb.a
bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %3, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !18
  %i.d = load i8, ptr %1, align 1, !tbaa !13
  %i.e = zext i8 %i.d to i32
  %i.f = add nuw nsw i32 %i.e, 32
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.f, ptr %i.g, align 4, !tbaa !9
  %i.h = load i8, ptr %1, align 1, !tbaa !13
  %i.i = icmp eq i8 %i.h, 83
  br i1 %i.i, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.k = icmp ugt ptr %2, %i.j
  br i1 %i.k, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.j, align 1, !tbaa !13
  switch i8 %i.l, label %bb.s [
    i8 83, label %bb.e
    i8 115, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 2, ptr %i.m, align 4, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.n, align 4, !tbaa !18
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.o = add i8 %.fr, -97
  %or.cond83 = icmp ult i8 %i.o, 26
  br i1 %or.cond83, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %3, align 4, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.p, align 4, !tbaa !18
  %i.q = load i8, ptr %1, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.s, ptr %i.t, align 4, !tbaa !9
  %i.u = load i8, ptr %1, align 1, !tbaa !13
  %i.v = icmp eq i8 %i.u, 115
  br i1 %i.v, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.x = icmp ugt ptr %2, %i.w
  br i1 %i.x, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %i.w, align 1, !tbaa !13
  switch i8 %i.y, label %bb.s [
    i8 115, label %bb.j
    i8 83, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 2, ptr %i.z, align 4, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.aa, align 4, !tbaa !18
  br label %.sink.split

bb.k:                                             ; preds = %bb.f
  %i.ab = and i8 %.fr, -16
  switch i8 %i.ab, label %bb.q [
    i8 -64, label %bb.l
    i8 -48, label %bb.m
    i8 -32, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %3, align 4, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.ac, align 4, !tbaa !18
  %i.ad = load i8, ptr %1, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nuw nsw i32 %i.ae, 32
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  switch i8 %.fr, label %bb.o [
    i8 -33, label %bb.n
    i8 -41, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  store <4 x i32> <i32 1, i32 2, i32 115, i32 115>, ptr %3, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 20
  store <4 x i32> <i32 1, i32 2, i32 83, i32 83>, ptr %i.ag, align 4, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40
  store <4 x i32> <i32 1, i32 2, i32 115, i32 83>, ptr %i.ah, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 1, ptr %i.ai, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 2, ptr %i.aj, align 4, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 83, ptr %i.ak, align 4, !tbaa !9
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  store i32 1, ptr %3, align 4, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.al, align 4, !tbaa !18
  %i.am = load i8, ptr %1, align 1, !tbaa !13
  %i.an = zext i8 %i.am to i32
  %i.ao = add nuw nsw i32 %i.an, 32
  br label %.sink.split

bb.p:                                             ; preds = %bb.k
  store i32 1, ptr %3, align 4, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.ap, align 4, !tbaa !18
  %i.aq = load i8, ptr %1, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -32
  br label %.sink.split

bb.q:                                             ; preds = %bb.k
  %i.at = icmp ult i8 %.fr, -16
  br i1 %i.at, label %bb.s, label %switch.early.test

switch.early.test:                                ; preds = %bb.q
  switch i8 %.fr, label %bb.r [
    i8 -1, label %bb.s
    i8 -9, label %bb.s
  ]

bb.r:                                             ; preds = %switch.early.test
  store i32 1, ptr %3, align 4, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.au, align 4, !tbaa !18
  %i.av = load i8, ptr %1, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.j, %bb.l, %bb.n, %bb.o, %bb.p, %bb.r
  %.sink93 = phi i64 [ 8, %bb.r ], [ 8, %bb.p ], [ 8, %bb.o ], [ 72, %bb.n ], [ 8, %bb.l ], [ 28, %bb.j ], [ 28, %bb.e ]
  %.sink = phi i32 [ %i.ax, %bb.r ], [ %i.as, %bb.p ], [ %i.ao, %bb.o ], [ 115, %bb.n ], [ %i.af, %bb.l ], [ 223, %bb.j ], [ 223, %bb.e ]
  %.0.ph = phi i32 [ 1, %bb.r ], [ 1, %bb.p ], [ 1, %bb.o ], [ 4, %bb.n ], [ 1, %bb.l ], [ 2, %bb.j ], [ 2, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %.sink93
  store i32 %.sink, ptr %i.ay, align 4, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %switch.early.test, %switch.early.test, %bb.q, %bb.m, %bb.g, %bb.h, %bb.i, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.b ], [ 0, %bb.m ], [ 0, %switch.early.test ], [ 0, %bb.q ], [ 1, %bb.g ], [ 0, %switch.early.test ], [ 1, %bb.d ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

declare i32 @onigenc_minimum_property_name_to_ctype(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @is_code_ctype(i32 noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #4 {
bb.a:
  %i.a = icmp ult i32 %0, 256
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr @EncISO_8859_1_CtypeTable, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !15
  %i.e = zext i16 %i.d to i32
  %i.f = lshr i32 %i.e, %1
  %i.g = and i32 %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @onigenc_not_support_get_ctype_code_range(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @onigenc_single_byte_left_adjust_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_always_true_is_allowed_reverse_match(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @case_map(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr noundef %3, ptr nofree noundef readnone captures(address) %4, ptr nofree readnone captures(none) %5) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.c = icmp ult ptr %i.b, %2
  %i.d = icmp ult ptr %3, %4
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %i.f = phi ptr [ %i.ab, %bb.k ], [ %i.b, %bb.a ] ; 2 uses
  %.054 = phi i32 [ %spec.select, %bb.k ], [ %i.a, %bb.a ] ; 15 uses
  %.04053 = phi ptr [ %i.y, %bb.k ], [ %3, %bb.a ] ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %1, align 8, !tbaa !12
  %i.h = load i8, ptr %i.f, align 1, !tbaa !13    ; 4 uses
  %6 = zext i8 %i.h to i32                        ; 7 uses
  %i.i = icmp eq i8 %i.h, -33
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.j = and i32 %.054, 8192
  %.not48 = icmp eq i32 %i.j, 0
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = or i32 %.054, 262144
  %i.l = getelementptr inbounds nuw i8, ptr %.04053, i64 1
  store i8 83, ptr %.04053, align 1, !tbaa !13
  %7 = lshr i32 %.054, 10
  %8 = and i32 %7, 32
  %9 = or disjoint i32 %8, 83
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.m = and i32 %.054, 524288
  %.not49 = icmp eq i32 %i.m, 0
  br i1 %.not49, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = or i32 %.054, 262144
  %i.o = getelementptr inbounds nuw i8, ptr %.04053, i64 1
  store i8 115, ptr %.04053, align 1, !tbaa !13
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph
  %i.p = zext i8 %i.h to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @EncISO_8859_1_CtypeTable, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !15   ; 2 uses
  %i.s = and i16 %i.r, 1024
  %.not = icmp eq i16 %i.s, 0
  %i.t = and i32 %.054, 540672
  %.not45 = icmp eq i32 %i.t, 0
  %or.cond52 = select i1 %.not, i1 true, i1 %.not45
  br i1 %or.cond52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = or i32 %.054, 262144
  %10 = add nuw nsw i32 %6, 32
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  switch i8 %i.h, label %bb.i [
    i8 -1, label %bb.k
    i8 -70, label %bb.k
    i8 -75, label %bb.k
    i8 -86, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = and i16 %i.r, 64
  %.not46 = icmp eq i16 %i.v, 0
  %i.w = and i32 %.054, 8192
  %.not47 = icmp eq i32 %i.w, 0
  %or.cond = select i1 %.not46, i1 true, i1 %.not47
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = or i32 %.054, 262144
  %11 = add nsw i32 %6, -32
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.g, %bb.i, %bb.j, %bb.c, %bb.e, %bb.d
  %.141 = phi ptr [ %i.l, %bb.c ], [ %i.o, %bb.e ], [ %.04053, %bb.d ], [ %.04053, %bb.g ], [ %.04053, %bb.h ], [ %.04053, %bb.j ], [ %.04053, %bb.h ], [ %.04053, %bb.i ], [ %.04053, %bb.h ], [ %.04053, %bb.h ] ; 2 uses
  %.039 = phi i32 [ %9, %bb.c ], [ 115, %bb.e ], [ 223, %bb.d ], [ %10, %bb.g ], [ %6, %bb.h ], [ %11, %bb.j ], [ %6, %bb.h ], [ %6, %bb.i ], [ %6, %bb.h ], [ %6, %bb.h ]
  %.1 = phi i32 [ %i.k, %bb.c ], [ %i.n, %bb.e ], [ %.054, %bb.d ], [ %i.u, %bb.g ], [ %.054, %bb.h ], [ %i.x, %bb.j ], [ %.054, %bb.h ], [ %.054, %bb.i ], [ %.054, %bb.h ], [ %.054, %bb.h ] ; 3 uses
  %12 = trunc i32 %.039 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %.141, i64 1 ; 3 uses
  store i8 %12, ptr %.141, align 1, !tbaa !13
  %i.z = and i32 %.1, 32768
  %.not51 = icmp eq i32 %i.z, 0
  %i.aa = xor i32 %.1, 57344
  %spec.select = select i1 %.not51, i32 %.1, i32 %i.aa ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %2
  %i.ad = icmp ult ptr %i.y, %4
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.040.lcssa = phi ptr [ %3, %bb.a ], [ %i.y, %bb.k ]
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %spec.select, %bb.k ]
  store i32 %.0.lcssa, ptr %0, align 4, !tbaa !9
  %i.af = ptrtoint ptr %.040.lcssa to i64
  %i.ag = ptrtoint ptr %3 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  ret i32 %i.ai
}

declare i32 @onigenc_apply_all_case_fold_with_map(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"", !8, i64 0, !8, i64 4, !7, i64 8}
!17 = !{!16, !8, i64 0}
!18 = !{!16, !8, i64 4}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
end_hunk_0
