Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_color?download=true
inline.NumInlined: 15
inline.NumDeleted: 1
begin_hunk_0_@lv_color_to_hsv:bb.a
  %i.m = tail call i32 @llvm.umin.i32(i32 %..i, i32 %i.l)
  %.sink66.i = tail call i32 @llvm.umax.i32(i32 %i.d, i32 %i.h) ; 2 uses
  %i.n = tail call i32 @llvm.umax.i32(i32 %.sink66.i, i32 %i.l) ; 5 uses
  %i.o = sub nuw nsw i32 %i.n, %i.m               ; 5 uses
  %i.p = icmp samesign ult i32 %i.o, 3
  br i1 %i.p, label %lv_color_rgb_to_hsv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = mul nuw nsw i32 %i.o, 100
  %i.r = udiv i32 %i.q, %i.n                      ; 3 uses
  %i.s = and i32 %i.r, 255
  %i.t = icmp samesign ult i32 %i.s, 3
  br i1 %i.t, label %lv_color_rgb_to_hsv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %i.n, %i.d
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = sub nsw i32 %i.h, %i.l
  %i.w = shl nsw i32 %i.v, 10
  %i.x = sdiv i32 %i.w, %i.o
  %i.y = icmp samesign ult i24 %i.g, %i.k
  %i.z = select i1 %i.y, i32 6144, i32 0
  %i.aa = add nsw i32 %i.x, %i.z
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.ab = icmp eq i32 %i.n, %i.h
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = sub nsw i32 %i.l, %i.d
  %i.ad = shl nsw i32 %i.ac, 10
  %i.ae = sdiv i32 %i.ad, %i.o
  %i.af = add nsw i32 %i.ae, 2048
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp samesign ugt i32 %.sink66.i, %i.l
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i32 %i.d, %i.h
  %i.ah = shl nsw i32 %i.ag, 10
  %i.ai = sdiv i32 %i.ah, %i.o
  %i.aj = add nsw i32 %i.ai, 4096
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.0.i = phi i32 [ %i.aa, %bb.d ], [ %i.af, %bb.f ], [ %i.aj, %bb.h ], [ 0, %bb.g ]
  %i.ak = mul nsw i32 %.0.i, 60
  %i.al = ashr i32 %i.ak, 10                      ; 3 uses
  %i.am = icmp slt i32 %i.al, 0
  %i.an = add nsw i32 %i.al, 360
  %spec.select.i = select i1 %i.am, i32 %i.an, i32 %i.al
  %i.ao = and i32 %spec.select.i, 65535
  br label %lv_color_rgb_to_hsv.exit

lv_color_rgb_to_hsv.exit:                         ; preds = %bb.a, %bb.b, %bb.i
  %.sroa.0.0.i = phi i32 [ %i.ao, %bb.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.4.0.i = phi i32 [ %i.r, %bb.i ], [ 0, %bb.a ], [ %i.r, %bb.b ]
  %i.ap = mul nuw nsw i32 %i.n, 1638400
  %.sroa.7.0.insert.ext.i = and i32 %i.ap, 2130706432
  %.sroa.4.0.insert.ext.i = shl i32 %.sroa.4.0.i, 16
  %.sroa.4.0.insert.shift.i = and i32 %.sroa.4.0.insert.ext.i, 16711680
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.0.0.i, %.sroa.7.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.4.0.insert.shift.i
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 5) i8 @lv_color_format_get_size(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %switch.tableidx = add i32 %0, -6               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 48
  br i1 %i.a, label %switch.lookup, label %lv_color_format_get_bpp.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.lv_color_format_get_size, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %lv_color_format_get_bpp.exit

lv_color_format_get_bpp.exit:                     ; preds = %bb.a, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i8 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 16777216) i32 @lv_color_to_int(i24 %0) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i24 %0 to i32
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @lv_color_eq(i24 %0, i24 %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i24 %0, %1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @lv_color32_eq(i32 %0, i32 %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %0, %1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i24 @lv_color_hex(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = trunc i32 %0 to i24
  ret i24 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @lv_color32_make(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %.sroa.4.0.insert.ext = zext i8 %3 to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 24
  %.sroa.3.0.insert.ext = zext i8 %0 to i32
  %.sroa.3.0.insert.shift = shl nuw nsw i32 %.sroa.3.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.3.0.insert.shift
  %.sroa.2.0.insert.ext = zext i8 %1 to i32
  %.sroa.2.0.insert.shift = shl nuw nsw i32 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.insert, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %2 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i24 @lv_color_hex3(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %0, 4
  %i.b = and i32 %i.a, 240
  %i.c = lshr i32 %0, 8
  %i.d = and i32 %i.c, 15
  %i.e = or disjoint i32 %i.b, %i.d
  %i.f = and i32 %0, 240                          ; 2 uses
  %i.g = lshr exact i32 %i.f, 4
  %i.h = or disjoint i32 %i.g, %i.f
  %i.i = and i32 %0, 15
  %i.j = mul nuw nsw i32 %i.i, 17
  %i.k = trunc nuw nsw i32 %i.e to i24
  %.sroa.3.0.insert.shift.i = shl nuw i24 %i.k, 16
  %i.l = trunc nuw nsw i32 %i.h to i24
  %.sroa.2.0.insert.shift.i = shl nuw nsw i24 %i.l, 8
  %.sroa.2.0.insert.insert.i = or disjoint i24 %.sroa.2.0.insert.shift.i, %.sroa.3.0.insert.shift.i
  %i.m = trunc nuw nsw i32 %i.j to i24
  %.sroa.0.0.insert.insert.i = or disjoint i24 %.sroa.2.0.insert.insert.i, %i.m
  ret i24 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %0, i16 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i8 %2 to i32
  switch i8 %2, label %bb.c [
    i8 -1, label %bb.e
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i16 %0, %1
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = zext i16 %1 to i32
  %i.d = zext i16 %0 to i32
  %i.e = add nuw nsw i32 %i.a, 4
  %i.f = lshr i32 %i.e, 3
  %i.g = mul nuw i32 %i.c, 65537
  %i.h = and i32 %i.g, 132184095                  ; 2 uses
  %i.i = mul nuw i32 %i.d, 65537
  %i.j = and i32 %i.i, 132184095
  %i.k = sub nsw i32 %i.j, %i.h
  %i.l = mul i32 %i.k, %i.f
  %i.m = lshr i32 %i.l, 5
  %i.n = add nuw nsw i32 %i.m, %i.h
  %i.o = and i32 %i.n, 132184095                  ; 2 uses
  %i.p = lshr i32 %i.o, 16
  %i.q = or disjoint i32 %i.p, %i.o
  %i.r = trunc i32 %i.q to i16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d, %bb.b
  %.0 = phi i16 [ %i.r, %bb.d ], [ %1, %bb.b ], [ %0, %bb.a ], [ %0, %bb.c ]
  ret i16 %.0
}

; Function Attrs: nounwind uwtable
define void @lv_color_premultiply(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.b = load i8, ptr %i.a, align 1, !tbaa !9     ; 4 uses
  switch i8 %i.b, label %bb.c [
    i8 -1, label %bb.d
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @lv_memset(ptr noundef nonnull %0, i8 noundef zeroext 0, i64 noundef 4) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10
  %1 = tail call i8 @llvm.umulh.i8(i8 %i.d, i8 %i.b)
  store i8 %1, ptr %i.c, align 1, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %2 = tail call i8 @llvm.umulh.i8(i8 %i.f, i8 %i.b)
  store i8 %2, ptr %i.e, align 1, !tbaa !11
  %i.g = load i8, ptr %0, align 1, !tbaa !12
  %3 = tail call i8 @llvm.umulh.i8(i8 %i.g, i8 %i.b)
  store i8 %3, ptr %0, align 1, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_color16_premultiply(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  switch i8 %1, label %bb.c [
    i8 -1, label %bb.d
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef 2) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = zext i8 %1 to i16                        ; 3 uses
  %i.b = load i16, ptr %0, align 2                ; 3 uses
  %i.c = lshr i16 %i.b, 11
  %.tr = shl nuw nsw i16 %i.a, 3
  %tr.sh.diff = mul nuw i16 %.tr, %i.c
  %i.d = and i16 %tr.sh.diff, -2048
  %i.e = and i16 %i.b, 31
  %i.f = lshr i16 %i.b, 5
  %i.g = and i16 %i.f, 63
  %i.h = mul nuw nsw i16 %i.g, %i.a
  %i.i = lshr i16 %i.h, 3
  %i.j = and i16 %i.i, 2016
  %i.k = mul nuw nsw i16 %i.e, %i.a
  %i.l = lshr i16 %i.k, 8
  %i.m = or disjoint i16 %i.l, %i.d
  %i.n = or disjoint i16 %i.m, %i.j
  store i16 %i.n, ptr %0, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @lv_color_luminance(i24 %0) local_unnamed_addr #1 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i24 %0, 8
  %.sroa.3.0.extract.shift = lshr i24 %0, 16
  %narrow = mul nuw nsw i24 %.sroa.3.0.extract.shift, 77
  %i.a = and i24 %.sroa.2.0.extract.shift, 255
  %narrow1 = mul nuw nsw i24 %i.a, 151
  %i.b = and i24 %0, 255
  %narrow3 = mul nuw nsw i24 %i.b, 28
  %narrow2 = add nuw nsw i24 %narrow3, %narrow
  %narrow4 = add nuw nsw i24 %narrow2, %narrow1
  %i.c = lshr i24 %narrow4, 8
  %i.d = trunc nuw i24 %i.c to i8
  ret i8 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @lv_color16_luminance(i16 %0) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i16 %0, 11
  %narrow = mul nuw nsw i16 %i.a, 635
  %i.b = lshr i16 %0, 5
  %i.c = and i16 %i.b, 63
  %narrow3 = mul nuw i16 %i.c, 613
  %i.d = and i16 %0, 31
  %narrow4 = mul nuw nsw i16 %i.d, 231
  %i.e = add nuw nsw i16 %narrow4, %narrow
  %i.f = add nuw i16 %i.e, %narrow3
  %i.g = lshr i16 %i.f, 8
  %i.h = trunc nuw i16 %i.g to i8
  ret i8 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i8 @lv_color24_luminance(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = zext i8 %i.b to i16
  %i.d = mul nuw nsw i16 %i.c, 77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i16
  %i.h = mul nuw i16 %i.g, 151
  %i.i = add nuw i16 %i.h, %i.d
  %i.j = load i8, ptr %0, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i16
  %i.l = mul nuw nsw i16 %i.k, 28
  %i.m = add nuw i16 %i.i, %i.l
  %i.n = lshr i16 %i.m, 8
  %i.o = trunc nuw i16 %i.n to i8
  ret i8 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @lv_color32_luminance(i32 %0) local_unnamed_addr #1 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i32 %0, 8
  %.sroa.3.0.extract.shift = lshr i32 %0, 16
  %i.a = and i32 %.sroa.3.0.extract.shift, 255
  %i.b = mul nuw nsw i32 %i.a, 77
  %i.c = and i32 %.sroa.2.0.extract.shift, 255
  %i.d = mul nuw nsw i32 %i.c, 151
  %i.e = and i32 %0, 255
  %i.f = mul nuw nsw i32 %i.e, 28
  %i.g = add nuw nsw i32 %i.d, %i.f
  %i.h = add nuw nsw i32 %i.g, %i.b
  %i.i = lshr i32 %i.h, 8
  %i.j = trunc nuw i32 %i.i to i8
  ret i8 %i.j
}

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!9 = !{!8, !4, i64 3}
!10 = !{!8, !4, i64 2}
!11 = !{!8, !4, i64 1}
!12 = !{!8, !4, i64 0}
!13 = !{!4, !4, i64 0}
end_hunk_0
