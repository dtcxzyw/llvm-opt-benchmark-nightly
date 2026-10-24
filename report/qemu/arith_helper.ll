Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/arith_helper?download=true
inline.NumInlined: 39
inline.NumDeleted: 11
begin_hunk_0_@helper_shsub8:bb.a
  %i.c = shl i32 %1, 24
  %i.d = ashr exact i32 %i.c, 24
  %i.e = sub nsw i32 %i.b, %i.d
  %i.f = lshr i32 %i.e, 1
  %i.g = and i32 %i.f, 255
  %i.h = shl i32 %0, 16
  %i.i = ashr i32 %i.h, 24
  %i.j = shl i32 %1, 16
  %i.k = ashr i32 %i.j, 24
  %i.l = sub nsw i32 %i.i, %i.k
  %i.m = shl nsw i32 %i.l, 7
  %i.n = and i32 %i.m, 65280
  %i.o = shl i32 %0, 8
  %i.p = ashr i32 %i.o, 24
  %i.q = shl i32 %1, 8
  %i.r = ashr i32 %i.q, 24
  %i.s = sub nsw i32 %i.p, %i.r
  %i.t = shl nsw i32 %i.s, 15
  %i.u = and i32 %i.t, 16711680
  %i.v = ashr i32 %0, 24
  %i.w = ashr i32 %1, 24
  %i.x = sub nsw i32 %i.v, %i.w
  %i.y = shl nsw i32 %i.x, 23
  %i.z = and i32 %i.y, -16777216
  %i.aa = or disjoint i32 %i.n, %i.z
  %i.ab = or disjoint i32 %i.aa, %i.g
  %i.ac = or disjoint i32 %i.ab, %i.u
  ret i32 %i.ac
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_shsubaddx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %0, 16
  %i.b = ashr exact i32 %i.a, 16
  %i.c = ashr i32 %1, 16
  %i.d = add nsw i32 %i.b, %i.c
  %i.e = lshr i32 %i.d, 1
  %i.f = and i32 %i.e, 65535
  %i.g = ashr i32 %0, 16
  %i.h = shl i32 %1, 16
  %i.i = ashr exact i32 %i.h, 16
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = shl nsw i32 %i.j, 15
  %i.l = and i32 %i.k, -65536
  %i.m = or disjoint i32 %i.l, %i.f
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_shaddsubx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %0, 16
  %i.b = ashr exact i32 %i.a, 16
  %i.c = ashr i32 %1, 16
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = lshr i32 %i.d, 1
  %i.f = and i32 %i.e, 65535
  %i.g = ashr i32 %0, 16
  %i.h = shl i32 %1, 16
  %i.i = ashr exact i32 %i.h, 16
  %i.j = add nsw i32 %i.i, %i.g
  %i.k = shl nsw i32 %i.j, 15
  %i.l = and i32 %i.k, -65536
  %i.m = or disjoint i32 %i.l, %i.f
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_uhadd16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = and i32 %1, 65535
  %i.c = add nuw nsw i32 %i.b, %i.a
  %i.d = lshr i32 %i.c, 1
  %i.e = lshr i32 %0, 16
  %i.f = lshr i32 %1, 16
  %i.g = add nuw nsw i32 %i.f, %i.e
  %i.h = shl nuw i32 %i.g, 15
  %i.i = and i32 %i.h, -65536
  %i.j = or disjoint i32 %i.i, %i.d
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_uhadd8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 255
  %i.b = and i32 %1, 255
  %i.c = add nuw nsw i32 %i.b, %i.a
  %i.d = lshr i32 %i.c, 1
  %i.e = lshr i32 %0, 8
  %i.f = and i32 %i.e, 255
  %i.g = lshr i32 %1, 8
  %i.h = and i32 %i.g, 255
  %i.i = add nuw nsw i32 %i.h, %i.f
  %i.j = shl nuw nsw i32 %i.i, 7
  %i.k = and i32 %i.j, 65280
  %i.l = lshr i32 %0, 16
  %i.m = and i32 %i.l, 255
  %i.n = lshr i32 %1, 16
  %i.o = and i32 %i.n, 255
  %i.p = add nuw nsw i32 %i.o, %i.m
  %i.q = shl nuw nsw i32 %i.p, 15
  %i.r = and i32 %i.q, 16711680
  %i.s = lshr i32 %0, 24
  %i.t = lshr i32 %1, 24
  %i.u = add nuw nsw i32 %i.t, %i.s
  %i.v = shl nuw i32 %i.u, 23
  %i.w = and i32 %i.v, -16777216
  %i.x = or disjoint i32 %i.w, %i.d
  %i.y = or disjoint i32 %i.x, %i.k
  %i.z = or disjoint i32 %i.y, %i.r
  ret i32 %i.z
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_uhsub16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = and i32 %1, 65535
  %i.c = sub nsw i32 %i.a, %i.b
  %i.d = lshr i32 %i.c, 1
  %i.e = and i32 %i.d, 65535
  %i.f = lshr i32 %0, 16
  %i.g = lshr i32 %1, 16
  %i.h = sub nsw i32 %i.f, %i.g
  %i.i = shl nsw i32 %i.h, 15
  %i.j = and i32 %i.i, -65536
  %i.k = or disjoint i32 %i.e, %i.j
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_uhsub8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 255
  %i.b = and i32 %1, 255
  %i.c = sub nsw i32 %i.a, %i.b
  %i.d = lshr i32 %i.c, 1
  %i.e = and i32 %i.d, 255
  %i.f = lshr i32 %0, 8
  %i.g = and i32 %i.f, 255
  %i.h = lshr i32 %1, 8
  %i.i = and i32 %i.h, 255
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = shl nsw i32 %i.j, 7
  %i.l = and i32 %i.k, 65280
  %i.m = lshr i32 %0, 16
  %i.n = and i32 %i.m, 255
  %i.o = lshr i32 %1, 16
  %i.p = and i32 %i.o, 255
  %i.q = sub nsw i32 %i.n, %i.p
  %i.r = shl nsw i32 %i.q, 15
  %i.s = and i32 %i.r, 16711680
  %i.t = lshr i32 %0, 24
  %i.u = lshr i32 %1, 24
  %i.v = sub nsw i32 %i.t, %i.u
  %i.w = shl nsw i32 %i.v, 23
  %i.x = and i32 %i.w, -16777216
  %i.y = or disjoint i32 %i.x, %i.e
  %i.z = or disjoint i32 %i.y, %i.l
  %i.aa = or disjoint i32 %i.z, %i.s
  ret i32 %i.aa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_uhsubaddx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = lshr i32 %1, 16
  %i.c = add nuw nsw i32 %i.b, %i.a
  %i.d = lshr i32 %i.c, 1
  %i.e = lshr i32 %0, 16
  %i.f = and i32 %1, 65535
  %i.g = sub nsw i32 %i.e, %i.f
  %i.h = shl nsw i32 %i.g, 15
  %i.i = and i32 %i.h, -65536
  %i.j = or disjoint i32 %i.i, %i.d
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_uhaddsubx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 65535
  %i.b = lshr i32 %1, 16
  %i.c = sub nsw i32 %i.a, %i.b
  %i.d = lshr i32 %i.c, 1
  %i.e = and i32 %i.d, 65535
  %i.f = lshr i32 %0, 16
  %i.g = and i32 %1, 65535
  %i.h = add nuw nsw i32 %i.g, %i.f
  %i.i = shl nuw i32 %i.h, 15
  %i.j = and i32 %i.i, -65536
  %i.k = or disjoint i32 %i.e, %i.j
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 509) i32 @helper_usad8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %0 to i8
  %i.b = trunc i32 %1 to i8
  %narrow.i = sub nsw i8 %i.a, %i.b
  %.0.i = tail call range(i8 0, -128) i8 @llvm.abs.i8(i8 %narrow.i, i1 true)
  %i.c = lshr i32 %0, 8
  %i.d = trunc i32 %i.c to i8
  %i.e = lshr i32 %1, 8
  %i.f = trunc i32 %i.e to i8
  %narrow.i12 = sub nsw i8 %i.d, %i.f
  %.0.i13 = tail call range(i8 0, -128) i8 @llvm.abs.i8(i8 %narrow.i12, i1 true)
  %narrow = add nuw i8 %.0.i13, %.0.i
  %2 = zext i8 %narrow to i32
  %i.g = lshr i32 %0, 16
  %i.h = trunc i32 %i.g to i8
  %i.i = lshr i32 %1, 16
  %i.j = trunc i32 %i.i to i8
  %narrow.i14 = sub nsw i8 %i.h, %i.j
  %.0.i15 = tail call range(i8 0, -128) i8 @llvm.abs.i8(i8 %narrow.i14, i1 true)
  %i.k = lshr i32 %0, 24
  %3 = trunc nuw i32 %i.k to i8
  %4 = lshr i32 %1, 24
  %5 = trunc nuw i32 %4 to i8
  %narrow.i16 = sub nsw i8 %3, %5
  %.0.i17 = tail call range(i8 0, -128) i8 @llvm.abs.i8(i8 %narrow.i16, i1 true)
  %narrow18 = add nuw i8 %.0.i17, %.0.i15
  %6 = zext i8 %narrow18 to i32
  %i.l = add nuw nsw i32 %6, %2
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_sel_flags(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 1
  %.not = icmp eq i32 %i.a, 0
  %spec.select = select i1 %.not, i32 0, i32 255  ; 2 uses
  %i.b = and i32 %0, 2
  %.not12 = icmp eq i32 %i.b, 0
  %i.c = or disjoint i32 %spec.select, 65280
  %.1 = select i1 %.not12, i32 %spec.select, i32 %i.c ; 2 uses
  %i.d = and i32 %0, 4
  %.not13 = icmp eq i32 %i.d, 0
  %i.e = or disjoint i32 %.1, 16711680
  %.2 = select i1 %.not13, i32 %.1, i32 %i.e      ; 2 uses
  %i.f = and i32 %0, 8
  %.not14 = icmp eq i32 %i.f, 0
  %i.g = or disjoint i32 %.2, -16777216
  %.3 = select i1 %.not14, i32 %.2, i32 %i.g      ; 2 uses
  %i.h = and i32 %.3, %1
  %i.i = xor i32 %.3, -1
  %i.j = and i32 %2, %i.i
  %i.k = or i32 %i.h, %i.j
  ret i32 %i.k
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @helper_crc32(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %1, ptr %i.a, align 4
  %i.b = xor i32 %0, -1
  %i.c = zext i32 %i.b to i64
  %i.d = call i64 @crc32(i64 noundef %i.c, ptr noundef nonnull %i.a, i32 noundef %2) #7
  %i.e = trunc i64 %i.d to i32
  %i.f = xor i32 %i.e, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.f
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @helper_crc32c(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %1, ptr %i.a, align 4
  %i.b = call i32 @crc32c(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %2) #7
  %i.c = xor i32 %i.b, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.c
}

declare i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.uadd.sat.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.uadd.sat.v4i8(<4 x i8>, <4 x i8>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.usub.sat.v4i8(<4 x i8>, <4 x i8>) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
end_hunk_0
